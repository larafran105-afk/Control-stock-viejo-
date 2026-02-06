<?php

namespace App\Http\Middleware;

use Closure;

class CheckCajaAbierta
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // 1. Si no está logueado o son rutas del sistema, dejar pasar
        if (!auth()->check() || $request->is('logout', 'caja/*', 'login', 'api/*', 'check-new-audit')) {
            return $next($request);
        }

        $user = auth()->user();

        // 2. Regla para el Super Admin (ID 2): Si ya omitió, dejar pasar
        if (($user->role_id == 2 || $user->role_id == 13) && session('caja_omitida_hoy')) {
            return $next($request);
        }

        // 3. Verificamos si existe caja abierta en la DB
        $cajaAbierta = \App\Caja::where('user_id', $user->id)
                                ->where('estado', 'abierta')
                                ->exists();

        // 4. EL BLOQUEO: Si no tiene caja y no es el Admin que omitió
        // Si intenta ir a cualquier lado que NO sea el Dashboard ('/'), lo mandamos de vuelta.
        if (!$cajaAbierta && !$request->is('/')) {
            return redirect('/')->with('error', 'Debes abrir caja para navegar.');
        }

        return $next($request);
    }
}
