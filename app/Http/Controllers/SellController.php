<?php

namespace App\Http\Controllers;

use App\Sell;
use Illuminate\Http\Request;

class SellController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        dd($request->only(['cash_amount', 'transfer_amount', 'payment_in']));
        
        $sell = new \App\Sell();
        $sell->user_id = auth()->id();
        $sell->customer_id = $request->customer_id;
        $sell->total_amount = $request->grand_total;
        
        // GUARDADO: Usamos 'payment_in' del Payload y 'metodo_pago' de la DB
        $sell->metodo_pago = $request->payment_in; 
        $sell->paid_amount = $request->paid_amount; // Esto hará que no figure como deuda
        
        $sell->cash_amount = $request->cash_amount;     
        $sell->transfer_amount = $request->transfer_amount; 

        $sell->sell_date = $request->invoice_date;
        $sell->save();

        return response()->json(['success' => true]);
    }
        

    /**
     * Display the specified resource.
     *
     * @param  \App\Sell  $sell
     * @return \Illuminate\Http\Response
     */
    public function show(Sell $sell)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Sell  $sell
     * @return \Illuminate\Http\Response
     */
    public function edit(Sell $sell)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Sell  $sell
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Sell $sell)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Sell  $sell
     * @return \Illuminate\Http\Response
     */
    public function destroy(Sell $sell)
    {
        //
    }
}
