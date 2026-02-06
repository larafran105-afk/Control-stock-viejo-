@extends('include.master')


@section('title','Dashboard')


@section('page-title','Dashboard')


@section('content')
            <info-box></info-box>
            @if(isset($mostrarModalCaja) && $mostrarModalCaja)
                <div class="modal fade" id="modalCajaObligatoria" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">💰 Apertura de Caja Requerida</h4>
                            </div>
                            <div class="modal-body">
                                <p>Hola <strong>{{ auth()->user()->name }}</strong>. Ingresá el monto inicial para operar hoy.</p>
                                <form action="{{ route('caja.abrir') }}" method="POST">
                                    {{ csrf_field() }}
                                    <div class="form-group">
                                        <label>Monto Inicial ($)</label>
                                        <input type="number" name="monto" class="form-control" placeholder="Ej: 5000" required step="0.01" min="0">
                                    </div>
                                    <div class="m-t-20">
                                        <button type="submit" class="btn btn-primary btn-lg waves-effect">ABRIR CAJA Y EMPEZAR</button>
                                        @if(auth()->user()->role_id == 2 || auth()->user()->role_id == 13 )
                                            <a href="{{ route('caja.omitir') }}" class="btn btn-link waves-effect">CERRAR (SÓLO ADMIN)</a>
                                        @endif
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            @endif

            {{-- Ponemos el script directamente aquí para asegurar ejecución --}}
            <script>
                // Usamos window.onload para esperar a que todas las librerías carguen
                window.onload = function() {
                    console.log("Página cargada completamente. Buscando modal...");
                    
                    // Verificamos si jQuery está disponible
                    if (typeof jQuery !== 'undefined') {
                        var $modal = $('#modalCajaObligatoria');
                        if ($modal.length) {
                            console.log("Modal encontrado. Disparando apertura...");
                            $modal.modal({
                                backdrop: 'static',
                                keyboard: false
                            });
                            $modal.modal('show');
                        } else {
                            console.error("No se encontró el elemento #modalCajaObligatoria en el HTML.");
                        }
                    } else {
                        console.error("Error: jQuery no está cargado.");
                    }
                };
            </script>
@endsection


@push('script')

    <script type="text/javascript" src="{{ url('public/js/dashboard.js') }}"></script>


@endpush