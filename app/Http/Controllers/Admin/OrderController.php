<?php

namespace App\Http\Controllers\Admin;

use App\Order;
use DataTables;
use Silber\Bouncer\Database\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreUsersRequest;
use App\Http\Requests\Admin\UpdateUsersRequest;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    public function index()
    {
        if (! Gate::allows('orders')) {
            return abort(401);
        }
        
        return view('admin.orders.index');
    }

    public function getOrdersData(){
        $orders = Order::query();

        return \DataTables::of($orders)
            ->addColumn('customer_name', function ($orders) {
                $users = DB::table('orders as o')
                    ->leftJoin('customers as c', 'o.customer_id', '=', 'c.id')
                    ->where('o.id', '=', $orders->id)
                    ->select('c.name as customer_name')
                    ->get()->toArray();
                $customer_name ='';    
                if(isset($users[0]->customer_name) && !empty($users[0]->customer_name)){
                    $customer_name = $users[0]->customer_name;
                }
                return $customer_name;
            })
            ->addColumn('action', function ($orders) {
                return '<a href="'. url('/admin/viewOrder/'.$orders->id).'" class="btn btn-xs btn-rpimary"><i class="glyphicon glyphicon-eye-open"></i> View</a>';
            })
            ->make(true);
    }

    public function view($order_id){
        if (! Gate::allows('orders')) {
            return abort(401);
        }

        $order_data = DB::table('orders as o')
                    ->leftJoin('customers as c', 'o.customer_id', '=', 'c.id')
                    ->leftJoin('order_items as oi', 'oi.order_id', '=', 'o.id')
                    ->leftJoin('products as p', 'p.id', '=', 'oi.product_id')
                    ->where('o.id', '=', $order_id)
                    ->select('c.name as customer_name','c.email','oi.*','o.total_amount','o.status','o.invoice_number','p.name as product_name','p.price','o.created_at as order_date')
                    ->get()->toArray();
        return view('admin.orders.view',compact('order_data'));
    }
}
