<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Caja;
use Auth;

class CajaController extends Controller
{
    public function abrir(Request $request) {
        $request->validate(['monto' => 'required|numeric|min:0']);

        Caja::create([
            'user_id' => Auth::id(),
            'monto_inicial' => $request->monto,
            'estado' => 'abierta',
            'abierta_at' => now()
        ]);

        return back()->with('success', 'Caja abierta correctamente');
    }

    public function omitir() {
        if (Auth::user()->role_id == 2 ||Auth::user()->role_id == 13 ) {
            session(['caja_omitida_hoy' => true]);
        }
        return back();
    }

    // Muestra el estado de la caja abierta
    public function index() {
        $user = auth()->user();
    
        $caja = \App\Caja::where('user_id', $user->id)
                        ->where('estado', 'abierta')
                        ->first();
        $efectivo = 0;
        $transferencia = 0;
        
        if ($caja) {
            // Sumamos solo facturas creadas después de 'abierta_at'
            $ventas = \App\Sell::where('created_at', '>=', $caja->abierta_at)->get();

            foreach ($ventas as $v) {
                if ($v->metodo_pago == 'Efectivo') {
                    $efectivo += $v->total_amount;
                } elseif ($v->metodo_pago == 'Transferencia') {
                    $transferencia += $v->total_amount;
                } elseif ($v->metodo_pago == 'Efectivo/Transferencia') {
                    // Usamos los campos nuevos que creamos
                    $efectivo += $v->cash_amount;
                    $transferencia += $v->transfer_amount;
                } elseif ($v->metodo_pago == 'Tarjeta de Crédito') {
                    $transferencia += $v->total_amount;
                } elseif ($v->metodo_pago == 'Tarjeta de Débito') {
                    $transferencia += $v->total_amount;
                }
            }
        }
        $totalVentas = $efectivo + $transferencia;
        $historial = null;
        if ($user->role_id == 2 || $user->role_id == 13) {
            $historial = \App\Caja::with('user')
                                ->orderBy('created_at', 'desc')
                                ->get();
        } else {
            $historial = \App\Caja::where('user_id', $user->id)
                             ->with('user')
                             ->orderBy('created_at', 'desc')
                             ->get(); 
        }

        // 🚀 LÓGICA DE AUDITORÍA PARA CADA FILA DEL HISTORIAL
        foreach ($historial as $h) {
            $query = \App\Sell::where('created_at', '>=', $h->abierta_at);
            // Si la caja ya se cerró, filtramos hasta la fecha de cierre
            if ($h->cerrada_at) {
                $query->where('created_at', '<=', $h->cerrada_at);
            }
            $ventasH = $query->get();

            $h->sum_efectivo = 0;
            $h->sum_transferencia = 0;

            foreach ($ventasH as $v) {
                if ($v->metodo_pago == 'Efectivo') {
                    $h->sum_efectivo += $v->total_amount;
                } elseif ($v->metodo_pago == 'Transferencia') {
                    $h->sum_transferencia += $v->total_amount;
                } elseif ($v->metodo_pago == 'Efectivo/Transferencia') {
                    $h->sum_efectivo += $v->cash_amount;
                    $h->sum_transferencia += $v->transfer_amount;
                } elseif ($v->metodo_pago == 'Tarjeta de Crédito' || $v->metodo_pago == 'Tarjeta de Débito') {
                    $h->sum_transferencia += $v->total_amount;
                }
            }
            $h->sum_total = $h->sum_efectivo + $h->sum_transferencia;
        }

        return view('caja.estado', compact('caja', 'historial', 'efectivo', 'transferencia', 'totalVentas'));
        }

    // Procesa el cierre de la caja
    public function cerrar(Request $request) {
        $request->validate(['monto_final' => 'required|numeric|min:0']);

        $caja = \App\Caja::where('user_id', auth()->id())
                        ->where('estado', 'abierta')
                        ->first();

        if ($caja) {
            $caja->update([
                'monto_final' => $request->monto_final,
                'estado' => 'cerrada',
                'cerrada_at' => now()
            ]);
            
            // Limpiamos la sesión del admin por si acaso
            session()->forget('caja_omitida_hoy');

            return redirect('/')->with('success', 'Caja cerrada correctamente. ¡Buen descanso!');
        }

        return back()->with('error', 'No se encontró una caja abierta.');
    }
}