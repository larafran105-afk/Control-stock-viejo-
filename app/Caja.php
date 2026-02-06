<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Caja extends Model
{
    protected $fillable = ['user_id', 'monto_inicial', 'monto_final', 'estado', 'abierta_at', 'cerrada_at'];

    public function user() {
        return $this->belongsTo(User::class);
    }
}