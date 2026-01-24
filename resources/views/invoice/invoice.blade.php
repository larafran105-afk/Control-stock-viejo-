@extends('include.master')

@section('title','Facturación')

@section('page-title','Facturación')

@section('content')

<style>
    
    
    
    /* 1. CSS de máxima prioridad */
    .vdp-datepicker, 
    .vdp-datepicker * {
        pointer-events: none !important;
        cursor: not-allowed !important;
    }
    .vdp-datepicker input {
        background-color: #e9ecef !important;
        user-select: none !important;
    }

    /* Ocultar columna 'Debido' (columna 6) y botón 'Abonar' (columna 9) */
    table th:nth-child(6), table td:nth-child(6),
    table th:nth-child(9), table td:nth-child(9) {
        display: none !important;
    }
    
    /* Ocultar columnas 'Descuento' y 'Tipo de descuento' en la tabla de productos */
    table.table-bordered th:nth-child(6), table.table-bordered td:nth-child(6),
    table.table-bordered th:nth-child(7), table.table-bordered td:nth-child(7) {
        display: none !important;
    }

    /* Ocultar los totales innecesarios de la parte inferior */
    #invoice-form-summary .row:nth-child(2), /* Descuento total */
    #invoice-form-summary .row:nth-child(3), /* Importe neto por pagar */
    #invoice-form-summary .row:nth-child(4), /* Pagar ahora */
    #invoice-form-summary .row:nth-child(5)  /* Importe a deber */ {
        display: none !important;
    }

    @media (max-width: 767px) {
        .navbar-brand span {
            font-size: 14px !important; /* Achicamos la letra solo en el celu */
            white-space: nowrap;
        }
        .navbar-brand img {
            height: 25px !important; /* Achicamos el logo de la montaña */
        }
    }
</style>

<script>
    // 2. JS que se ejecuta cada medio segundo para asegurar que esté bloqueado
    // (Útil si Vue vuelve a cargar el componente)
    setInterval(function() {
        var datePickers = document.querySelectorAll('.vdp-datepicker');
        datePickers.forEach(function(dp) {
            dp.style.pointerEvents = 'none';
            var input = dp.querySelector('input');
            if(input) {
                input.readOnly = true;
                input.style.backgroundColor = '#e9ecef';
            }
        });
        // --- CAPA 2: Limpieza de Tablas (Lista y Formulario) ---
        // Buscamos columnas de Descuento, Tipo de descuento, Debido y Abonar
        document.querySelectorAll('table').forEach(function(tabla) {
            var encabezados = tabla.querySelectorAll('th');
            encabezados.forEach(function(th, index) {
                var texto = th.innerText.trim().toLowerCase();
                
                // Si la columna es de Descuentos o de Deuda, la borramos
                if (texto.includes('descuento') || texto.includes('debido') || texto.includes('abonar')) {
                    th.style.setProperty('display', 'none', 'important');
                    var selector = 'td:nth-child(' + (index + 1) + ')';
                    tabla.querySelectorAll(selector).forEach(function(td) {
                        td.style.setProperty('display', 'none', 'important');
                    });
                }
            });
        });

        // --- CAPA 3: Interfaz de Totales (Pie de página) ---
        var etiquetasOcultar = [
            'descuento total', 
            'importe neto por pagar', 
            'pagar ahora', 
            'importe a deber'
        ];

        document.querySelectorAll('p, label, span, strong').forEach(function(el) {
            var contenido = el.innerText.trim().toLowerCase();
            etiquetasOcultar.forEach(function(frase) {
                if (contenido.includes(frase)) {
                    // Ocultamos el renglón completo del resumen
                    if(el.parentElement) el.parentElement.style.setProperty('display', 'none', 'important');
                    el.style.setProperty('display', 'none', 'important');
                }
            });
        }); 
    
    }, 350); // Bajamos a 300ms para que sea casi instantáneo  
    
</script>

<div class="row clearfix">

    <create-invoice :categorys="{{ $category }}" :customers="{{ $customer }}"></create-invoice>

</div>


<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
            
                <h2 style="visibility: hidden;">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#create-stock">
                        Nueva factura
                    </button>
                </h2>
            </div>

            <view-invoice :categorys="{{ $category }}" :customers="{{ $customer }}"></view-invoice>

        </div>
    </div>
</div>




@endsection

@push('script')

<script type="text/javascript" src="{{ url('public/js/invoice.js') }}"></script>

@endpush