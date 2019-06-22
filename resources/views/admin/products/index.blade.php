@inject('request', 'Illuminate\Http\Request')
@extends('layouts.app')

@section('content')
    <h3 class="page-title">@lang('global.products.title')</h3>
    <div class="panel panel-default">
        <div class="panel-heading">
            @lang('global.app_list')
        </div>
        <div class="panel-body table-responsive">
            <select id="statusFilter" class="pull-right" style="margin:-11px 0px 4px;">
              <option value="">All Status</option>
              <option value="In stock">In stock</option>
              <option value="Out Of Stock">Out Of Stock</option>
             </select>
            <table id="product_data" class="table table-bordered table-striped  ">
                <thead>
                    <tr>
                        <th>@lang('global.products.fields.sno')</th>
                        <th>@lang('global.products.fields.name')</th>
                        <th>@lang('global.products.fields.price')</th>
                        <th>@lang('global.products.fields.in_stock')</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
@stop

@section('javascript') 
    
<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
/*$(document).ready(function() {*/
   var dtList = $('#product_data').DataTable({
        processing: true,
        serverSide: true,
        ajax:{url: '{{ route('getProductsData') }}',
              type: "GET",
              } ,
        columns: [
            {data: 'DT_RowIndex', name: 'DT_RowIndex',"searchable": false,"orderable":false},
            {data: 'name', name: 'name'},
            {data: 'price', name: 'price'},
            {data: 'in_stock', name: 'in_stock'},
        ]
    });
/*});*/

$('#statusFilter').on('change', function(){
/*var filter_value = $(this).val();
//alert(filter_value);
var new_url = "{{ route('getProductsData','In stock') }}";

  //str.replace("Microsoft", "W3Schools")
alert(new_url);
dtList.ajax.url(new_url).load();*/

  $('#product_data').DataTable().draw(true);
});

</script>
@endsection
