@extends('include.master')

@section('content')
<div class="container-fluid">
    <div class="block-header"><h2>GESTIÓN DE CAJA</h2></div>

    {{-- BLOQUE 1: CAJA ACTUAL DEL USUARIO --}}
    <div class="card">
        <div class="header"><h2>ESTADO DE TU CAJA</h2></div>
        <div class="body">
            @if($caja)
                {{-- Formulario de Cierre (Igual al que ya tenés) --}}
                <div class="row">
                    <div class="col-md-4">
                        <p><strong>Monto inicial caja roja:</strong> ${{ number_format($caja->monto_inicial, 2) }}</p>
                    <div class="col-md-4 text-right">
                        <form action="{{ route('caja.cerrar') }}" method="POST">
                            {{ csrf_field() }}
                            <div class="form-group">
                                <input type="number" name="monto_final" class="form-control" placeholder="Monto final" required step="0.01" style="border: 2px solid #ced4da !important; 
              border-radius: 5px !important; 
              padding: 10px !important; 
              width: 200px !important; 
              display: inline-block !important; 
              background-color: white !important;">
                            </div>
                            {{-- 🚀 AGREGAMOS 'mt-3' Y 'd-block' PARA QUE BAJE Y SE SEPARE --}}
                            <button type="submit" class="btn btn-danger mt-3 d-inline-block">
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
                <table class="table table-bordered table-striped table-hover">
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
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    @endif
</div>
@endsection