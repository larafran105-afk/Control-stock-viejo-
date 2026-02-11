@extends('include.master')
@section('content')
<div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
            <div class="card card-primary">
                <div class="card-header"><h4>🍺 Cajones Cerveza</h4></div>
                <div class="card-body">
                    <label>Total de Cajones (Físicos): <b>{{ $totalFisicoCerveza }}</b> </label>
                    {{-- <h5 class="text-center">Total Físico (Definido): <b>{{ $totalFisicoCerveza }}</b></h5>
                    <hr> --}}
                    <p>📦 <b>Llenos (en Stock):</b> <span id="llenos_cerveza">{{ $stockCerveza }}</span></p>
                    <p>📭 <b>Vacíos (Restantes):</b> <span id="vacios_cerveza"> <b>{{ $vaciosCerveza }}</b> </span></p>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card card-success">
                <div class="card-header"><h4>🥤 Cajones Gaseosa</h4></div>
                <div class="card-body">
                    <label>Total de Cajones (Físicos): <b>{{ $totalFisicoGaseosa }}</b></label>
                    
                    <p>📦 <b>Llenos (en Stock):</b> <span id="llenos_gaseosa">{{ $stockGaseosa }}</span></p>
                    <p>📭 <b>Vacíos (Restantes):</b> <span id="vacios_gaseosa"> <b>{{ $vaciosGaseosa }}</b> </span></p>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection