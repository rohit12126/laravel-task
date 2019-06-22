@inject('request', 'Illuminate\Http\Request')
@extends('layouts.app')

@section('content')
    <h3 class="page-title">@lang('global.orders.title')</h3>
    <div class="panel panel-default">
        <div class="panel-heading">
            @lang('global.app_list')
        </div>

        <div class="panel-body table-responsive">
            <table id="order_data" class="table table-bordered table-striped  ">
                <thead>
                    <tr>
                        <th>@lang('global.orders.fields.sno')</th>
                        <th>@lang('global.orders.fields.customer_name')</th>
                        <th>@lang('global.orders.fields.total_amount')</th>
                        <th>@lang('global.orders.fields.status')</th>
                        <th>@lang('global.orders.fields.action')</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
@stop

@section('javascript') 
    
<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#order_data').DataTable({
        processing: true,
        serverSide: true,
        ajax: '{{ route('getOrdersData') }}',
        columns: [
            {data: 'id', name: 'id'},
            {data: 'customer_name', name: 'customer_name',searchable: true,},
            {data: 'total_amount', name: 'total_amount'},
            {data: 'status', name: 'status'},
            {data: 'action', name: 'action'},
        ]
    });
});
</script>
@endsection
