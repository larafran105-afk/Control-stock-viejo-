<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sell extends Model
{
    // realtion with customer 

    protected $fillable = [
        'user_id',
        'customer_id',
        'branch_id',
        'total_amount',
        'paid_amount',
        'sell_date',
        'metodo_pago',
        'discount_amount',
        'payment_method',
        'payment_status',
        // 🚀 CAMPOS NUEVOS PARA EL PAGO MIXTO:
        'cash_amount',
        'transfer_amount'
    ];

    public function customer(){

    	return $this->belongsTo('App\Customer', 'customer_id')->withDefault([
            'customer_name' => 'Consumidor Final', 
            'id' => 0 
        ]);
    }


    // relation with user 

    public function user(){

        return $this->belongsTo('App\User')->withDefault([
            'id' => 0,
            'name' => 'Unknown User'
          ]);
    }


}
