<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
class ReportController extends Controller
{
    public function graficoVentas(Request $request)
    {
        if (Auth::user()->role_id != 2) {
            return redirect('/'); // Lo mandamos al inicio
        }
        
        $fechaInicio = $request->input('fecha_inicio');
        $fechaFin    = $request->input('fecha_fin');

        // CONSULTA MEJORADA: Traemos Plata (SUM) y Cantidad de Tickets (COUNT)
        // Usamos la tabla 'sells' (cabecera) para contar clientes reales, no productos sueltos
        $query = DB::table('sells')
            ->select(
                DB::raw('HOUR(created_at) as hora'),
                DB::raw('SUM(total_amount) as total'),
                DB::raw('COUNT(*) as cantidad') 
            )
            ->whereNotNull('created_at') 
            ->where('total_amount', '>', 0)
            ->groupBy('hora')
            ->orderBy('hora', 'ASC');

        // APLICAMOS FILTRO DE FECHAS
        if ($fechaInicio && $fechaFin) {
            $query->whereDate('created_at', '>=', $fechaInicio)
                  ->whereDate('created_at', '<=', $fechaFin);
        }

        $ventasPorHora = $query->get();

        // Rellenamos las horas vacías con 0
        $horasLabels = range(0, 23);
        $montoData = [];
        $cantidadData = []; // <--- Nuevo array para tickets

        foreach ($horasLabels as $hora) {
            $dato = $ventasPorHora->firstWhere('hora', $hora);
            $montoData[] = $dato ? $dato->total : 0;
            $cantidadData[] = $dato ? $dato->cantidad : 0;
        }

        return view('reports.graficos', compact('horasLabels', 'montoData', 'cantidadData', 'fechaInicio', 'fechaFin'));
    }

    public function graficoMensual(Request $request)
    {
        $anioActual = date('Y');
        $anio1 = $request->input('anio1', $anioActual);
        $anio2 = $request->input('anio2', $anioActual - 1);

        // Función auxiliar recargada: Calcula PLATA, CANTIDAD y PROMEDIO
        $obtenerDatosAnuales = function($anio) {
            $ventas = DB::table('sells')
                ->select(
                    DB::raw('MONTH(created_at) as mes'),
                    DB::raw('SUM(total_amount) as total'),
                    DB::raw('COUNT(*) as cantidad')
                )
                ->whereYear('created_at', $anio)
                ->where('total_amount', '>', 0)
                ->groupBy('mes')
                ->get();

            $dataMonto = [];
            $dataCantidad = [];
            $dataPromedio = []; // <--- NUEVO ARRAY

            for ($i = 1; $i <= 12; $i++) {
                $datoMes = $ventas->firstWhere('mes', $i);
                
                $total = $datoMes ? (float)$datoMes->total : 0;
                $cant  = $datoMes ? (int)$datoMes->cantidad : 0;

                // Calculamos el promedio (evitando división por cero)
                $promedio = ($cant > 0) ? ($total / $cant) : 0;

                $dataMonto[]    = $total;
                $dataCantidad[] = $cant;
                $dataPromedio[] = (float)$promedio; // <--- GUARDAMOS EL PROMEDIO
            }

            return ['monto' => $dataMonto, 'cantidad' => $dataCantidad, 'promedio' => $dataPromedio];
        };

        // Pedimos los paquetes de datos
        $paquete1 = $obtenerDatosAnuales($anio1);
        $paquete2 = $obtenerDatosAnuales($anio2);

        $mesesLabels = ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'];

        // Enviamos todo a la vista (agregamos los promedios)
        return view('reports.mensual', [
            'mesesLabels'   => $mesesLabels,
            'anio1'         => $anio1,
            'anio2'         => $anio2,
            'montoAnio1'    => $paquete1['monto'],
            'cantAnio1'     => $paquete1['cantidad'],
            'promedioAnio1' => $paquete1['promedio'], // <--- NUEVO
            'montoAnio2'    => $paquete2['monto'],
            'cantAnio2'     => $paquete2['cantidad'],
            'promedioAnio2' => $paquete2['promedio']  // <--- NUEVO
        ]);
    }
    
    public function auditoriaHoraria(Request $request)
    {
        if (Auth::user()->role_id != 2) {
            return redirect('/'); // Lo mandamos al inicio
        }
    
        // 1. Capturamos RANGO de fechas y RANGO de horas
        $fechaInicio = $request->input('fecha_inicio');
        $fechaFin    = $request->input('fecha_fin');
        $horaInicio  = $request->input('hora_inicio');
        $horaFin     = $request->input('hora_fin');

        $facturas = [];

        // 2. Validamos que haya puesto todos los datos
        if ($fechaInicio && $fechaFin && $horaInicio && $horaFin) {
            
            $facturas = DB::table('sells')
                ->select('id as invoice_no', 'created_at', 'total_amount', 'customer_id')
                
                // A. Filtramos los DÍAS (ej: todo Febrero)
                ->whereDate('created_at', '>=', $fechaInicio)
                ->whereDate('created_at', '<=', $fechaFin)
                
                // B. Filtramos el HORARIO (ej: solo de 14 a 15hs de CADA día)
                ->whereTime('created_at', '>=', $horaInicio)
                ->whereTime('created_at', '<=', $horaFin)
                
                // C. Filtramos los ceros
                ->where('total_amount', '>', 0)
                
                // Ordenamos por fecha y hora
                ->orderBy('created_at', 'ASC')
                ->get();
        }

        // Devolvemos las variables nuevas a la vista
        return view('reports.auditoria', compact('facturas', 'fechaInicio', 'fechaFin', 'horaInicio', 'horaFin'));
    }
}
