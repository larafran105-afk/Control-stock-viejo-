<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Tablero Anual</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
    <style>
        body { background: #eef2f5; font-family: sans-serif; padding-bottom: 50px; }
        .card-box { background: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.05); margin-bottom: 30px; }
        .chart-title { font-weight: bold; margin-bottom: 15px; border-left: 4px solid; padding-left: 10px; }
        .btn-comparar { background-color: #333; color: white; border: none; }
        .btn-comparar:hover { background-color: #000; color: white; }
    </style>
</head>
<body>

<div class="container" style="margin-top: 30px;">
    
    <div class="text-center mb-4">
        <h3>📊 Tablero de Control Anual</h3>
    </div>

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="card-box" style="padding: 15px; background: #fff;">
                <form action="{{ url('/reporte-mensual') }}" method="GET" class="form-inline text-center">
                    <label>Año Principal:</label>
                    <select name="anio1" class="form-control input-sm" style="font-weight:bold;">
                        @for($i = 2024; $i <= 2030; $i++)
                            <option value="{{ $i }}" {{ $anio1 == $i ? 'selected' : '' }}>{{ $i }}</option>
                        @endfor
                    </select>

                    <span style="margin: 0 10px;">VS</span>

                    <label>Comparar:</label>
                    <select name="anio2" class="form-control input-sm">
                        @for($i = 2024; $i <= 2030; $i++)
                            <option value="{{ $i }}" {{ $anio2 == $i ? 'selected' : '' }}>{{ $i }}</option>
                        @endfor
                    </select>

                    <button type="submit" class="btn btn-comparar btn-sm" style="margin-left: 10px;">🔄 Actualizar</button>
                </form>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="card-box">
                <h4 class="chart-title" style="border-color: #2196f3; color: #1565c0;">💰 Facturación Total ($)</h4>
                <canvas id="chartMonto" height="80"></canvas>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="card-box">
                <h4 class="chart-title" style="border-color: #9c27b0; color: #7b1fa2;">👥 Tráfico de Clientes (Cant. Tickets)</h4>
                <canvas id="chartClientes" height="80"></canvas>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="card-box">
                <h4 class="chart-title" style="border-color: #4caf50; color: #2e7d32;">🏷️ Ticket Promedio (Gasto por Cliente)</h4>
                <canvas id="chartPromedio" height="80"></canvas>
            </div>
        </div>
    </div>

    <div class="text-center">
        <a href="/" class="btn btn-default">⬅ Volver</a>
    </div>

</div>

<script>
    // DATOS DESDE PHP
    var labels = {!! json_encode($mesesLabels) !!};
    var label1 = "{{ $anio1 }}";
    var label2 = "{{ $anio2 }}";
    
    // Arrays de datos
    var montoAnio1 = {!! json_encode($montoAnio1) !!};
    var montoAnio2 = {!! json_encode($montoAnio2) !!};
    
    var cantAnio1 = {!! json_encode($cantAnio1) !!};
    var cantAnio2 = {!! json_encode($cantAnio2) !!};

    var promAnio1 = {!! json_encode($promedioAnio1) !!}; // Datos Promedio 1
    var promAnio2 = {!! json_encode($promedioAnio2) !!}; // Datos Promedio 2

    // Formateador de Moneda
    const formatPlata = new Intl.NumberFormat('es-AR', { style: 'currency', currency: 'ARS', minimumFractionDigits: 0 });

    // --- GRÁFICO 1: TICKET PROMEDIO (VERDE) ---
    new Chart(document.getElementById('chartPromedio'), {
        type: 'line',
        data: {
            labels: labels,
            datasets: [
                {
                    label: label1, data: promAnio1,
                    borderColor: '#4caf50', backgroundColor: 'rgba(76, 175, 80, 0.1)', // Verde
                    borderWidth: 3, pointRadius: 4, order: 1
                },
                {
                    label: label2, data: promAnio2,
                    borderColor: '#9e9e9e', borderWidth: 2, borderDash: [5, 5],
                    fill: false, pointRadius: 0, order: 2
                }
            ]
        },
        options: {
            responsive: true,
            tooltips: {
                mode: 'index', intersect: false,
                callbacks: {
                    label: function(tooltipItem, data) {
                        return data.datasets[tooltipItem.datasetIndex].label + ': ' + formatPlata.format(tooltipItem.yLabel);
                    }
                }
            },
            scales: {
                yAxes: [{ ticks: { callback: function(value) { return formatPlata.format(value); } } }]
            }
        }
    });

    // --- GRÁFICO 2: MONTO ($) ---
    new Chart(document.getElementById('chartMonto'), {
        type: 'line',
        data: {
            labels: labels,
            datasets: [
                {
                    label: label1, data: montoAnio1,
                    borderColor: '#2196f3', backgroundColor: 'rgba(33, 150, 243, 0.1)',
                    borderWidth: 3, pointRadius: 4, order: 1
                },
                {
                    label: label2, data: montoAnio2,
                    borderColor: '#b0bec5', borderWidth: 2, borderDash: [5, 5],
                    fill: false, pointRadius: 0, order: 2
                }
            ]
        },
        options: {
            responsive: true,
            tooltips: {
                mode: 'index', intersect: false,
                callbacks: {
                    label: function(tooltipItem, data) {
                        return data.datasets[tooltipItem.datasetIndex].label + ': ' + formatPlata.format(tooltipItem.yLabel);
                    }
                }
            },
            scales: {
                yAxes: [{ ticks: { callback: function(value) { return formatPlata.format(value); } } }]
            }
        }
    });

    // --- GRÁFICO 3: CLIENTES (TICKETS) ---
    new Chart(document.getElementById('chartClientes'), {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [
                {
                    label: label1, data: cantAnio1,
                    backgroundColor: 'rgba(156, 39, 176, 0.7)',
                    borderColor: '#7b1fa2', borderWidth: 1, order: 1
                },
                {
                    label: label2, data: cantAnio2,
                    backgroundColor: 'rgba(0, 0, 0, 0.05)',
                    borderColor: '#9e9e9e', borderWidth: 1, order: 2
                }
            ]
        },
        options: {
            responsive: true,
            tooltips: { mode: 'index', intersect: false },
            scales: {
                yAxes: [{ ticks: { beginAtZero: true } }]
            }
        }
    });
</script>

</body>
</html>