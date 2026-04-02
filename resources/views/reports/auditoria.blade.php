<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>🕵️ Auditoría Profunda</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body { background-color: #f4f6f9; padding: 30px; font-family: sans-serif; }
        .card { background: white; padding: 25px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        .btn-buscar { background-color: #009688; color: white; border: none; }
        .btn-buscar:hover { background-color: #00796b; color: white; }
        .badge-date { background-color: #607d8b; font-size: 12px; }
        .badge-time { background-color: #ff9800; font-size: 12px; }
    </style>
</head>
<body>

<div class="container">
    
    <div class="row">
        <div class="col-md-12 text-center">
            <h3>🕵️ Auditoría de Ventas por Franja Horaria</h3>
            <p class="text-muted">Buscá facturas en un horario específico a lo largo de varios días</p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="card">
                <form action="{{ url('/auditoria-horaria') }}" method="GET" class="form-inline text-center">
                    
                    <div class="form-group">
                        <label style="display:block; text-align: left; font-size: 11px; color: #777;">RANGO DE FECHAS</label>
                        <input type="date" name="fecha_inicio" class="form-control input-sm" value="{{ $fechaInicio }}" required>
                        <span style="margin: 0 5px;">a</span>
                        <input type="date" name="fecha_fin" class="form-control input-sm" value="{{ $fechaFin }}" required>
                    </div>

                    <div class="form-group" style="margin-left: 20px; border-left: 1px solid #ddd; padding-left: 20px;">
                        <label style="display:block; text-align: left; font-size: 11px; color: #777;">FRANJA HORARIA (Diaria)</label>
                        <input type="time" name="hora_inicio" class="form-control input-sm" value="{{ $horaInicio }}" required>
                        <span style="margin: 0 5px;">a</span>
                        <input type="time" name="hora_fin" class="form-control input-sm" value="{{ $horaFin }}" required>
                    </div>

                    <button type="submit" class="btn btn-buscar btn-sm" style="margin-left: 15px; margin-top: 18px;">
                        🔍 Analizar Franja
                    </button>
                </form>
            </div>
        </div>
    </div>

    <br>

    @if(count($facturas) > 0)
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="card">
                    <h4 class="text-center" style="margin-bottom: 20px;">
                        Resultados encontrados: <span class="badge">{{ count($facturas) }} facturas</span>
                    </h4>
                    
                    <table class="table table-hover table-condensed">
                        <thead>
                            <tr class="info">
                                <th>Fecha</th>
                                <th>Hora</th>
                                <th>N° Factura</th>
                                <th>Cliente</th>
                                <th class="text-right">Monto ($)</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php $sumaTotal = 0; @endphp
                            @foreach($facturas as $f)
                                <tr>
                                    <td>
                                        <span class="badge badge-date">
                                            {{ date('d/m/Y', strtotime($f->created_at)) }}
                                        </span>
                                    </td>
                                    <td>
                                        <span class="badge badge-time">
                                            {{ date('H:i', strtotime($f->created_at)) }} hs
                                        </span>
                                    </td>
                                    <td style="font-weight: bold; color: #555;">{{ $f->invoice_no }}</td>
                                    <td style="font-size: 13px;">{{ $f->customer_name ?? 'Consumidor Final' }}</td>
                                    <td class="text-right" style="font-weight: bold;">
                                        $ {{ number_format($f->total_amount, 2) }}
                                    </td>
                                </tr>
                                @php $sumaTotal += $f->total_amount; @endphp
                            @endforeach
                            
                            <tr style="background-color: #e0f2f1; font-size: 16px;">
                                <td colspan="4" class="text-right"><strong>TOTAL ACUMULADO EN ESTA FRANJA:</strong></td>
                                <td class="text-right"><strong>$ {{ number_format($sumaTotal, 2) }}</strong></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    @elseif($fechaInicio)
        <div class="alert alert-warning text-center" style="margin-top: 20px;">
            ⚠️ No se encontraron ventas entre las <strong>{{ $horaInicio }}</strong> y las <strong>{{ $horaFin }}</strong> para las fechas seleccionadas.
        </div>
    @endif

    <div class="text-center" style="margin-top: 30px; margin-bottom: 50px;">
        <a href="/reporte-grafico" class="btn btn-default">⬅ Volver a los Gráficos</a>
    </div>

</div>

</body>
</html>