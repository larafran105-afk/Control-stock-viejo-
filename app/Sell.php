<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sell extends Model
{
    // realtion with customer 


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
