@extends('include.master')
@section('title','Inventario | Stock Total')
@section('page-title','Stock Consolidado por Producto')

@section('content')
<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>DETALLE DE EXISTENCIAS TOTALES</h2>
            </div>
            <div class="body">
                <div class="form-group">
                    <div class="form-line">
                        <input type="text" id="searchInput" class="form-control" placeholder="Escribí para buscar producto o categoría...">
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover" id="stockTable">
                        <thead>
                            <tr>
                                <th>Categoría</th>
                                <th>Producto</th>
                                <th>Stock Total</th>
                                <th>Estado</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($stocks as $row)
                            <tr>
                                <td>{{ $row->product->category->name }}</td>
                                <td>{{ $row->product->product_name ?? 'N/A' }}</td>
                                <td><strong>{{ $row->total }}</strong></td>
                                <td>
                                    @if($row->total <= 0)
                                        <span class="label label-danger">Sin Stock</span>
                                    @elseif($row->total <= 10)
                                        <span class="label label-warning">Stock Bajo</span>
                                    @else
                                        <span class="label label-success">Disponible</span>
                                    @endif
                                </td>
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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#searchInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#stockTable tbody tr").filter(function() {
      // Oculta las filas que no coincidan con lo escrito
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>