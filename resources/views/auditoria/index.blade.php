@extends('layouts.app')

@section('title', 'Auditoría de Movimientos')

@section('content')
<div class="container-fluid">
    <div class="block-header">
        <h2>HISTORIAL DE MOVIMIENTOS - MATISCO LOGÍSTICA</h2>
    </div>
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <h2>REGISTRO DE ACTIVIDAD</h2>
                </div>
                <div class="body table-responsive">
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Usuario</th>
                                <th>Acción Realizada</th>
                                <th>Fecha</th>
                                <th>Hora</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($logs as $log)
                            <tr>
                                <td><strong>{{ $log->user_name }}</strong></td>
                                <td>{{ $log->description }}</td>
                                <td>{{ $log->created_at->format('d/m/Y') }}</td>
                                <td>{{ $log->created_at->format('H:i') }} hs</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection