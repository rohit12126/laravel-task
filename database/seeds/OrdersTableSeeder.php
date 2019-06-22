<?php

use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class OrdersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('orders')->insert([
            'invoice_number' => Str::random(10),
            'customer_id' => Str::random(10).'@gmail.com',
            'total_amount' => '1250',
            'status' => 'pending',
        ]);
    }
}
