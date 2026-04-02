<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class ChekPermission
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
        // 1. EL PATOVICA: Validamos si NO está logueado o si le falta el menú en la sesión
        if (!Auth::check() || !Session::has('side_menu')) {
            
            // Limpiamos cualquier rastro de sesión vieja o cookie
            Auth::logout();
            $request->session()->invalidate();
            $request->session()->regenerateToken();

            // Lo mandamos al login de vuelta
            return redirect('/login')->with('error', 'Tu sesión expiró por inactividad. Por favor, volvé a ingresar.');
        }

        // 2. Si pasamos el patovica, ya sabemos 100% seguro que el usuario existe y la sesión está intacta
        $role_id = Auth::user()->role_id;
        $namedRoute         = \Route::currentRouteName();
        $current_url_check  = DB::table('menus')->select('menu_url')->where('menu_url', $namedRoute)->get()->toArray();
        
        if ($namedRoute)
        {
            if ($current_url_check)
            {
                $permissionCheck = DB::table('menus')
                    ->join('permissions', 'permissions.menu_id', '=', 'menus.id')
                    ->where('role_id', $role_id)
                    ->where('menu_url', $namedRoute)
                    ->get()->toArray();

                if (empty($permissionCheck) || count($permissionCheck) <= 0)
                {
                    return response()->view('errors.404', [], 404);
                }
            }
        }

        return $next($request);
    }
}
