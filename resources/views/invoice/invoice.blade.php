@extends('include.master')

@section('title','Facturación')

@section('page-title','Facturación')

@section('content')

<style>
    
    /* Estilo de lista de carga pura */
    #viewPayment table { width: 100% !important; }
    #viewPayment table thead { display: none; } /* Ocultamos los títulos viejos */
    #viewPayment table td { 
        padding: 15px !important; 
        font-size: 18px !important; 
        border-bottom: 1px solid #eee !important;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    
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
    document.addEventListener('click', function(e) {
        // "Secuestramos" el clic del botón de Pagos (ojo azul)
        const btn = e.target.closest('.btn-info');
        if (btn) {
            setTimeout(() => {
                const modal = document.querySelector('.modal-content');
                if (modal) {
                    // 1. Obtenemos el ID de la factura
                    const row = btn.closest('tr');
                    const invoiceId = row.querySelector('td:nth-child(2)').innerText.trim();
                    
                    // 2. Preparamos el cuerpo de la tabla como una lista de Excel
                    const cuerpo = modal.querySelector('tbody');
                    cuerpo.innerHTML = '<tr><td>Cargando lista de mercadería...</td></tr>';

                    // 3. Traemos los datos reales
                    fetch('/invoice/details/' + invoiceId)
                        .then(res => res.json())
                        .then(data => {
                            cuerpo.innerHTML = '';
                            data.forEach(item => {
                                // Insertamos una fila simple con formato Producto x Cantidad
                                cuerpo.innerHTML += `
                                    <tr style="border: 1px solid #ddd;">
                                        <td style="padding: 10px; font-family: monospace;">
                                            <b>${item.product_name}</b> <span style="float:right;">x ${item.sold_quantity}</span>
                                        </td>
                                    </tr>`;
                            });
                        });
                        
                    // 4. Ocultamos los cuadros de "Total pagado" y montos de abajo
                    modal.querySelectorAll('.modal-body > div:not(.table-responsive)').forEach(div => div.style.display = 'none');
                    modal.querySelector('.modal-footer').style.borderTop = 'none';
                }
            }, 300);
        }
    });
    
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
    
    }, 350);   
    
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

{{-- Selector oculto que moveremos con JS --}}
<div id="payment_method_anchor" style="display: none;">
    <div style="margin-bottom: 15px; background: #fdfdfd; padding: 10px; border: 1px solid #009688; border-radius: 4px;">
        <label style="color: #009688; font-weight: bold;">💵 Medio de Pago:</label>
        <select id="final_payment_selector" class="form-control">
            <option value="Efectivo">Efectivo</option>
            <option value="Transferencia">Transferencia</option>
            <option value="Efectivo/Transferencia">Efectivo/Transferencia</option>
            <option value="Tarjeta de Crédito">Tarjeta de Crédito</option>
            <option value="Tarjeta de Débito">Tarjeta de Débito</option>
        </select>

        <div id="mixed_payment_fields" style="display: none; margin-top: 15px; border-top: 1px dashed #009688; padding-top: 10px;">
            <div class="row">
                <div class="col-md-6">
                    <label>Monto Efectivo:</label>
                    <input type="number" id="cash_amount_input" class="form-control" placeholder="0.00">
                </div>
                <div class="col-md-6">
                    <label>Monto Transferencia:</label>
                    <input type="number" id="transfer_amount_input" class="form-control" placeholder="0.00">
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    
    function findVue() {
        // Buscamos en toda la página quién tiene el modelo de la factura
        const els = document.querySelectorAll('*');
        for (let el of els) {
            if (el.__vue__ && el.__vue__.invoice) return el.__vue__;
        }
        return null;
    }

    function syncInvoice() {
        const btn = Array.from(document.querySelectorAll('button'))
                         .find(el => el.textContent.trim() === 'Generar Factura');
        const box = document.getElementById('payment_method_anchor');

        if (btn && box && !document.getElementById('ready_ok')) {
            btn.parentNode.insertBefore(box, btn);
            box.style.display = 'block';
            box.id = 'ready_ok';

            // --- LÓGICA DE CONTROL UNIFICADA ---
            document.getElementById('final_payment_selector').addEventListener('change', function() {
                const vue = findVue();
                if (!vue) return;

                const valor = this.value;
                console.log("Medio seleccionado: " + valor);

                // 1. Manejo de Visibilidad de campos mixtos
                const mixedFields = document.getElementById('mixed_payment_fields');
                if (valor === 'Efectivo/Transferencia') {
                    mixedFields.style.setProperty('display', 'block', 'important');
                } else {
                    mixedFields.style.display = 'none';
                    vue.invoice.cash_amount = 0;
                    vue.invoice.transfer_amount = 0;
                }

                // 2. Sincronización con el modelo de factura
                vue.invoice.payment_in = valor;
                // Si no es mixto, asumimos pago total
                if (valor !== 'Efectivo/Transferencia') {
                    vue.invoice.paid_amount = vue.invoice.grand_total; 
                }
            });

            // --- ESCUCHA DE MONTOS (INPUTS) ---
            const inputEfectivo = document.getElementById('cash_amount_input');
            const inputTransf = document.getElementById('transfer_amount_input');

            [inputEfectivo, inputTransf].forEach(input => {
                input.addEventListener('input', function() {
                    const vue = findVue();
                    if (vue) {
                        vue.invoice.cash_amount = inputEfectivo.value || 0;
                        vue.invoice.transfer_amount = inputTransf.value || 0;
                        // Actualizamos el total pagado como la suma de ambos
                        vue.invoice.paid_amount = parseFloat(vue.invoice.cash_amount) + parseFloat(vue.invoice.transfer_amount);
                    }
                });
            });
        }
    }
    setInterval(syncInvoice, 1000);

    // --- VIGILANTE DE ÉXITO BALANCEADO ---
    const observer = new MutationObserver((mutations) => {
        for (const mutation of mutations) {
            if (mutation.addedNodes.length) {
                // Buscamos los elementos donde SweetAlert2 pone el texto
                const swalTitle = document.querySelector('#swal2-title, .swal2-title, .swal2-html-container');
                
                // Solo recargamos si el texto es el de creación de factura
                if (swalTitle && swalTitle.innerText.includes('¡Factura creada!')) {
                    console.log("Éxito detectado en el mensaje. Recargando...");
                    
                    // Detenemos el observador para evitar recargas múltiples
                    observer.disconnect();

                    setTimeout(() => {
                        location.reload(); 
                    }, 1200); // Bajamos un poco el tiempo para que sea más fluido
                    break;
                }
            }
        }
    });

    // Vigilamos los cambios en el cuerpo de la página
    observer.observe(document.body, { childList: true, subtree: true });
</script>


@endsection

@push('script')

<script type="text/javascript" src="{{ url('public/js/invoice.js') }}"></script>

@endpush