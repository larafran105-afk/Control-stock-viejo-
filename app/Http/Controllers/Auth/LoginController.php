<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    /**
     * El usuario ha sido autenticado.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  mixed  $user
     * @return mixed
     */
    protected function authenticated(\Illuminate\Http\Request $request, $user)
    {
        // 1. Limpiamos cualquier rastro de menú anterior
        \Session::forget('side_menu');

        // 2. Cargamos el menú usando la función que encontraste en helpers.php
        $permited_menu = sideMenu($user->role_id);

        // 3. Lo guardamos en la sesión con 'push' para que la vista lo encuentre en el índice [0]
        \Session::push('side_menu', $permited_menu);

        return redirect()->intended($this->redirectTo);
    }
}
