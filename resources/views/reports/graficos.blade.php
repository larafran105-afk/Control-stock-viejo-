<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Análisis de Eficiencia</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
    <style>
        body { background: #f4f6f9; font-family: sans-serif; }
        .card-box { background: #fff; padding: 20px; border-radius: 5px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); margin-bottom: 20px; }
        .btn-matisco { background-color: #009688; color: white; border: none; }
        .btn-matisco:hover { background-color: #00796b; color: white; }
    </style>
</head>
<body>

<div class="container" style="margin-top: 30px;">
    
    <div class="row">
        <div class="col-md-12 text-center">
            <h3>📊 Análisis de Eficiencia Horaria</h3>
            <p class="text-muted">Cruzando Facturación ($) vs. Tráfico de Clientes (Tickets)</p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="card-box" style="border-top: 3px solid #009688;">
                <form action="{{ url('/reporte-grafico') }}" method="GET" class="form-inline text-center">
                    <div class="form-group" style="margin-right: 15px;">
                        <label>Desde: </label>
                        <input type="date" name="fecha_inicio" class="form-control" value="{{ $fechaInicio }}" required>
                    </div>
                    <div class="form-group" style="margin-right: 15px;">
                        <label>Hasta: </label>
                        <input type="date" name="fecha_fin" class="form-control" value="{{ $fechaFin }}" required>
                    </div>
                    <button type="submit" class="btn btn-matisco">Filtrar Fecha</button>
                    @if($fechaInicio)
                        <a href="{{ url('/reporte-grafico') }}" class="btn btn-default">Limpiar</a>
                    @endif
                </form>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="card-box">
                <canvas id="chartEficiencia" height="120"></canvas>
            </div>
        </div>
    </div>

    <div class="text-center">
        <a href="/" class="btn btn-default">⬅ Volver</a>
    </div>

</div>

<script>
    var horasLabels = {!! json_encode($horasLabels) !!};
    var montoData = {!! json_encode($montoData) !!};
    var cantidadData = {!! json_encode($cantidadData) !!};

    var horasTexto = horasLabels.map(function(h) { return h + ":00"; });

    // 1. CONFIGURAMOS EL FORMATEADOR ARGENTINO
    const formatoPlata = new Intl.NumberFormat('es-AR', {
        style: 'currency',
        currency: 'ARS',
        minimumFractionDigits: 0
    });

    var ctx = document.getElementById('chartEficiencia').getContext('2d');
    
    new Chart(ctx, {
        type: 'bar', 
        data: {
            labels: horasTexto,
            datasets: [
                {
                    label: 'Cant. Clientes',
                    data: cantidadData,
                    type: 'bar',
                    backgroundColor: 'rgba(54, 162, 235, 0.3)', 
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1,
                    yAxisID: 'eje-cantidad', 
                    order: 2 
                },
                {
                    label: 'Facturación',
                    data: montoData,
                    type: 'line',
                    borderColor: 'rgba(255, 140, 0, 1)', 
                    backgroundColor: 'transparent',
                    borderWidth: 3,
                    pointBackgroundColor: '#fff',
                    pointBorderColor: 'rgba(255, 140, 0, 1)',
                    pointRadius: 5,
                    yAxisID: 'eje-plata', 
                    order: 1 
                }
            ]
        },
        options: {
            responsive: true,
            tooltips: { 
                mode: 'index', 
                intersect: false,
                callbacks: {
                    // ESTA FUNCIÓN DECIDE CÓMO MOSTRAR CADA NÚMERO
                    label: function(tooltipItem, data) {
                        var valor = Number(tooltipItem.yLabel);
                        var label = data.datasets[tooltipItem.datasetIndex].label;

                        // Si es el dataset de Plata (Índice 1), le ponemos signo $
                        if (tooltipItem.datasetIndex === 1) {
                            return label + ': ' + formatoPlata.format(valor);
                        } 
                        // Si es el de Clientes, solo el número
                        else {
                            return label + ': ' + valor;
                        }
                    }
                }
            },
            scales: {
                // EJE IZQUIERDO ($) CON FORMATO
                yAxes: [{
                    id: 'eje-plata',
                    type: 'linear',
                    position: 'left',
                    ticks: {
                        beginAtZero: true,
                        // Callback para ponerle $ y puntos al eje Y izquierdo
                        callback: function(value) { return formatoPlata.format(value); }
                    },
                    scaleLabel: { display: true, labelString: 'Dinero Facturado' }
                }, 
                // EJE DERECHO (CANTIDAD) SIN FORMATO MONEDA
                {
                    id: 'eje-cantidad',
                    type: 'linear',
                    position: 'right',
                    ticks: { beginAtZero: true },
                    gridLines: { display: false },
                    scaleLabel: { display: true, labelString: 'Clientes Atendidos' }
                }]
            }
        }
    });
</script>

</body>
</html>