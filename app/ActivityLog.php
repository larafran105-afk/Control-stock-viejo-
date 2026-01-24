<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ActivityLog extends Model
{
    // Esto permite que Laravel guarde los datos en la tabla
    protected $fillable = ['user_id', 'user_name', 'description'];

    // Esta es la función que usaremos desde los controladores
    public static function record($message) {
        self::create([
            'user_id' => auth()->id(),
            'user_name' => auth()->user()->name,
            'description' => $message,
        ]);
    }
}
