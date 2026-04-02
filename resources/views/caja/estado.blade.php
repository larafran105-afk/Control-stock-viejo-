@extends('include.master')

@section('content')
<div class="container-fluid">
    <div class="block-header"><h2>GESTIÓN DE CAJA</h2></div>

    {{-- BLOQUE 1: CAJA ACTUAL DEL USUARIO --}}
    <div class="card">
        <div class="header"><h2>ESTADO DE TU CAJA</h2></div>
        <div class="body">
            @if($caja)
                <div class="row">
                    <div class="col-md-3">
                        <p style="margin-top: 10px;"><strong>Monto inicial caja roja:</strong> ${{ number_format($caja->monto_inicial, 2) }}</p>
                    </div>
                    
                    <div class="col-md-9">
                        <form action="{{ route('caja.cerrar') }}" method="POST" style="display: flex; gap: 10px; align-items: center;">
                            {{ csrf_field() }}
                            
                            <input type="number" name="monto_final" class="form-control" placeholder="Monto final" required step="0.01" 
                                style="border: 2px solid #ced4da !important; border-radius: 5px !important; padding: 10px !important; width: 180px !important; background-color: white !important;">
                            
                            <textarea name="comentarios" class="form-control" placeholder="Algún comentario... (Opcional)" rows="1" 
                                style="border: 2px solid #ced4da !important; border-radius: 5px !important; padding: 10px !important; width: 350px !important; background-color: white !important; resize: none;"></textarea>

                            <button type="submit" class="btn btn-danger">
                                CERRAR CAJA ROJA
                            </button>
                        </form>
                    </div>
                </div>
                </div>
                        <div class="row mt-4 mb-4" style="background: #f4f4f4; padding: 20px; border-radius: 10px;">
                        <div class="col-md-4 text-center">
                            <label style="color: #009688; font-weight: bold;">💵 Efectivo en Caja</label>
                            <h3>$ {{ number_format($efectivo, 2) }}</h3>
                        </div>
                        <div class="col-md-4 text-center">
                            <label style="color: #2196F3; font-weight: bold;">🏦 Transferencias</label>
                            <h3>$ {{ number_format($transferencia, 2) }}</h3>
                        </div>
                        <div class="col-md-4 text-center">
                            <label style="color: #333; font-weight: bold;">🚀 Total Ventas</label>
                            <h3 style="border-bottom: 2px solid #333;">$ {{ number_format($totalVentas, 2) }}</h3>
                        </div>
                    </div>
            @else
                <div class="alert alert-warning">No tenés ninguna caja abierta en este momento.</div>
                
                {{-- APERTURA MANUAL: Solo para Super Admin (ID 2) --}}
                @if(auth()->user()->role_id == 2)
                    <div class="m-t-20">
                        <h4>Abrir Caja Manualmente</h4>
                        <form action="{{ route('caja.abrir') }}" method="POST" class="form-inline">
                            {{ csrf_field() }}
                            <input type="number" name="monto" class="form-control" placeholder="Monto Inicial" required>
                            <button type="submit" class="btn btn-success">ABRIR AHORA</button>
                        </form>
                    </div>
                @endif
            @endif
        </div>
    </div>

    {{-- BLOQUE 2: HISTORIAL GLOBAL (Solo Admin o con permiso) --}}
    @if($historial)
    <div class="card m-t-30">
        <div class="header"><h2>HISTORIAL GLOBAL DE CAJAS</h2></div>
        <div class="body">
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover" style="white-space: nowrap;">
                    <thead>
                        <tr>
                            <th>Usuario</th>
                            <th>Monto Inicial</th>
                            <th>Monto Final</th>
                            <th style="color: #009688;">Efectivo</th>
                            <th style="color: #2196F3;">Transferencia</th>
                            <th>Total Ventas</th>
                            <th>Estado</th>
                            <th>Apertura</th>
                            <th>Cierre</th>
                            <th>Comentarios</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($historial as $h)
                        <tr>
                            <td>{{ $h->user->name }}</td>
                            <td>${{ number_format($h->monto_inicial, 2) }}</td>
                            <td>{{ $h->monto_final ? '$'.number_format($h->monto_final, 2) : '---' }}</td>
                            <td class="font-weight-bold text-success">$ {{ number_format($h->sum_efectivo, 2) }}</td>
                            <td class="font-weight-bold text-primary">$ {{ number_format($h->sum_transferencia, 2) }}</td>
                            <td class="font-weight-bold">$ {{ number_format($h->sum_total, 2) }}</td>
                            <td>
                                <span class="label {{ $h->estado == 'abierta' ? 'label-success' : 'label-default' }}">
                                    {{ strtoupper($h->estado) }}
                                </span>
                            </td>
                            <td>{{ $h->abierta_at }}</td>
                            <td>{{ $h->cerrada_at ?? 'En curso...' }}</td>
                            <td class="text-center" style="vertical-align: middle;">
                                @php
                                    $ventasCaja = \App\Sell::where('user_id', $h->user_id)
                                        ->whereBetween('created_at', [
                                            $h->abierta_at, 
                                            $h->cerrada_at ?? \Carbon\Carbon::now()
                                        ])
                                        ->select('created_at', 'total_amount')
                                        ->get();
                                @endphp
                                
                                <button type="button" title="Ver detalles de la caja" 
                                        style="background: #00bcd4; color: white; border: none; padding: 2px 8px; border-radius: 3px; cursor: pointer; font-size: 12px; line-height: 1.5; box-shadow: 0 1px 3px rgba(0,0,0,0.2);" 
                                        data-usuario="{{ $h->user->name }}"
                                        data-comentario="{{ $h->comentarios ?? '' }}"
                                        data-ventas="{{ base64_encode($ventasCaja->toJson()) }}"
                                        onclick="abrirModalComentario(this)">
                                    VER
                                </button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    @endif
</div>
{{-- ========================================================= --}}
{{-- 🚀 MODAL ELEGANTE CON PESTAÑAS (COMENTARIOS / VENTAS) --}}
{{-- ========================================================= --}}
<div class="modal fade" id="modalComentario" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="border-radius: 8px; border: none; box-shadow: 0 5px 15px rgba(0,0,0,0.3);">
            
            <div class="modal-header" style="border-bottom: 1px solid #eee; padding: 15px 20px; background: #f8f9fa; border-radius: 8px 8px 0 0;">
                <h4 class="modal-title" id="tituloModalComentario" style="margin: 0; font-size: 16px; font-weight: bold; color: #333;">
                    </h4>
            </div>
            
            <div class="modal-body" style="padding: 20px;">
                
                {{-- 🚀 MENÚ DE PESTAÑAS --}}
                <ul class="nav nav-tabs" role="tablist" style="margin-bottom: 15px; border-bottom: 2px solid #ddd;">
                    <li role="presentation" class="active">
                        <a href="#pestana-comentarios" aria-controls="pestana-comentarios" role="tab" data-toggle="tab" style="font-weight: bold; color: #555; padding: 10px 15px;">
                            💬 Comentarios
                        </a>
                    </li>
                    <li role="presentation">
                        <a href="#pestana-ventas" aria-controls="pestana-ventas" role="tab" data-toggle="tab" style="font-weight: bold; color: #555; padding: 10px 15px;">
                            📊 Ventas
                        </a>
                    </li>
                </ul>

                {{-- 🚀 CONTENIDO DE LAS PESTAÑAS --}}
                <div class="tab-content">
                    
                    {{-- CONTENIDO 1: COMENTARIOS (Activa por defecto) --}}
                    <div role="tabpanel" class="tab-pane active" id="pestana-comentarios">
                        <p id="textoModalComentario" style="font-size: 14px; color: #444; white-space: pre-wrap; margin: 0; line-height: 1.6; background: #f9f9f9; padding: 15px; border-radius: 4px; border: 1px dashed #ccc;">
                            </p>
                    </div>

                    {{-- CONTENIDO 2: VENTAS (Oculta hasta que hacen clic) --}}
                    <div role="tabpanel" class="tab-pane" id="pestana-ventas">
                        <div style="background: #e0f7fa; padding: 15px; border-radius: 6px; border: 1px solid #b2ebf2;">
                            <h5 style="margin-top: 0; font-weight: bold; color: #00838f; font-size: 14px; margin-bottom: 12px;">
                                🕒 Filtrar ventas por horario
                            </h5>
                            
                            <div style="display: flex; gap: 10px; align-items: center; margin-bottom: 15px;">
                                <input type="time" id="modal_hora_inicio" class="form-control" style="width: 130px;">
                                <span style="color: #555; font-weight: bold;">hasta</span>
                                <input type="time" id="modal_hora_fin" class="form-control" style="width: 130px;">
                                <button type="button" class="btn btn-info btn-sm" onclick="filtrarVentasJS()" style="background: #00bcd4; border: none;">Filtrar</button>
                            </div>

                            <div style="display: flex; justify-content: space-between; align-items: center; background: white; padding: 10px; border-radius: 4px; box-shadow: 0 1px 2px rgba(0,0,0,0.05);">
                                <span style="color: #666; font-size: 14px; font-weight: bold;">Total en este rango:</span>
                                <span id="montoFiltrado" style="font-size: 18px; font-weight: bold; color: #4CAF50;">$ 0.00</span>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            
            <div class="modal-footer" style="border-top: none; padding: 10px 20px 20px;">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
            </div>
            
        </div>
    </div>
</div>

<script>
    let ventasActualesModal = [];

    function abrirModalComentario(boton) {
        var usuario = boton.getAttribute('data-usuario');
        var comentario = boton.getAttribute('data-comentario');
        var ventasBase64 = boton.getAttribute('data-ventas');
        
        // 1. DESEMPAQUETAR VENTAS (Blindaje Anti-Errores)
        try {
            let jsonTexto = atob(ventasBase64); // Traduce el Base64
            ventasActualesModal = JSON.parse(jsonTexto);
        } catch (error) {
            console.error("Error al leer ventas:", error);
            ventasActualesModal = [];
        }
        
        // 2. Setear Textos
        document.getElementById('tituloModalComentario').innerHTML = '📦 Detalles de Caja - ' + usuario;
        
        if(comentario && comentario.trim() !== '') {
            document.getElementById('textoModalComentario').innerText = comentario;
            document.getElementById('textoModalComentario').style.color = '#444';
        } else {
            document.getElementById('textoModalComentario').innerText = 'No se dejaron comentarios en este turno.';
            document.getElementById('textoModalComentario').style.color = '#999';
        }
        
        // 3. Resetear Filtros a 0 cada vez que se abre
        document.getElementById('modal_hora_inicio').value = '';
        document.getElementById('modal_hora_fin').value = '';
        document.getElementById('montoFiltrado').innerText = '$ 0.00';
        
        // 4. Arrancar siempre en la pestaña de Comentarios
        $('.nav-tabs a[href="#pestana-comentarios"]').tab('show');
        
        // 5. Mostrar Modal
        $('#modalComentario').modal('show');
    }

    function filtrarVentasJS() {
        let inicio = document.getElementById('modal_hora_inicio').value; 
        let fin = document.getElementById('modal_hora_fin').value;       
        
        // Validaciones para que el sistema te avise qué pasa
        if(!inicio || !fin) {
            alert("⚠️ Por favor, seleccioná la hora de inicio y la hora de fin.");
            return;
        }

        if(ventasActualesModal.length === 0) {
            alert("⚠️ La base de datos dice que esta caja tiene 0 ventas registradas en su horario de apertura.");
            return;
        }

        let sumaTotal = 0;
        let ventasEncontradas = 0;

        ventasActualesModal.forEach(venta => {
            let strDate = venta.created_at; 
            if (strDate && typeof strDate === 'object' && strDate.date) {
                strDate = strDate.date;
            }

            if (strDate) {
                // Buscamos la hora exacta (ej: 14:30)
                let match = String(strDate).match(/(\d{2}:\d{2})/);
                if (match) {
                    let horaVenta = match[1]; 
                    
                    if (horaVenta >= inicio && horaVenta <= fin) {
                        sumaTotal += parseFloat(venta.total_amount || 0);
                        ventasEncontradas++;
                    }
                }
            }
        });

        // Si buscó y no encontró en ese horario, te avisa
        if (ventasEncontradas === 0) {
            alert("🔍 Se revisaron " + ventasActualesModal.length + " ventas, pero NINGUNA está entre las " + inicio + " y las " + fin + ".");
        }

        // Formatear a moneda prolija
        let totalFormateado = sumaTotal.toLocaleString('en-US', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
        document.getElementById('montoFiltrado').innerText = '$ ' + totalFormateado;
    }
</script>
{{-- ========================================================= --}}

@endsection