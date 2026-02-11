        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="{{ url('images/user.png') }}" width="60" height="60" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ Auth::user()->name }}</div>
                    <div class="email">{{ Auth::user()->email  }}</div>
                    <div class="btn-group user-helper-dropdown">
                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="{{ url('password-change') }}"><i class="material-icons">person</i>Perfil</a></li>
                            <li><a href="{{ url('logout') }}"><i class="material-icons">input</i>Desconectar</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="header">NAVEGACIÓN PRINCIPAL</li>
                    <li @if(Route::currentRouteName()=='' ) class="active" @endif>
                        <a href="{{ url('/') }}">
                            <i class="material-icons">dashboard</i>
                            <span>Dashboard</span>
                        </a>
                    </li>

                    @php

                    $side_menu = Session::get('side_menu');
                    $itemConfiguracion = null;

                    // Obtenemos la última vez que el usuario entró a Auditoría (si no existe, usamos ayer)
                    $ultimaVezVisto = session('audit_last_seen', now()->subDay());

                    // Solo mostramos el "!" si hay movimientos grabados DESPUÉS de esa hora
                    $hayMovimientosNuevos = \App\ActivityLog::where('created_at', '>', $ultimaVezVisto)->exists();
                    
                    

                    @endphp

                    @foreach($side_menu[0] as $value)

                    @if($value['name'] == 'Configuración' || $value['name'] == 'Configuración')
                        @php $item_configuracion = $value; @endphp
                        @continue   
                    @endif
                    
                    @if(count($value['sub_menu'])>0)
                    <li class="parent">
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">{{ $value['icon'] }}</i>
                            <span>{{ $value['name'] }}</span>
                        </a>
                        <ul class="ml-menu">

                            @foreach($value['sub_menu'] as $sub)
                            <li @if(Route::currentRouteName()==$sub->menu_url) class="active" @endif>
                                <a href="{{ $sub->menu_url ? route($sub->menu_url) : '' }}">
                                    <span>{{ $sub->name }}</span>
                                </a>

                            </li>
                            @endforeach
                            
                        </ul>
                    </li>

                    @else
                    
                    <li @if(Route::currentRouteName()==$value['url']) class="active" @endif>
                        <a href="{{ $value['url'] ? route($value['url']) : '' }}">
                            <i class="material-icons">{{ $value['icon'] }}</i>
                            <span>{{ $value['name'] }}</span>
                            
                            {{-- SI EL MENÚ ES AUDITORÍA Y HAY ACTIVIDAD, PONEMOS EL BADGE --}}
                            @if($value['name'] == 'Auditoria' && $hayMovimientosNuevos && !Request::is('auditoria*'))
                                {{-- Estilo mejorado para centrarlo y que se vea más como una notificación --}}
                                <span id="badge-auditoria" class="label-count bg-red" style="
                                    float: right; 
                                    border-radius: 50%; 
                                    width: 18px; 
                                    height: 18px; 
                                    display: none; 
                                    align-items: center; 
                                    justify-content: center; 
                                    font-size: 11px; 
                                    font-weight: bold; 
                                    margin-top: 13px;">!</span>
                            @endif
                        </a>
                    </li>

                    @endif

                    @endforeach()
                    
                    <li class="parent">
                        <a href="{{ route('stock.total') }}" class="button">
                            <i class="material-icons">assessment</i>
                            <span>Stock Total por Producto</span>
                        </a>
                    </li>   

                    <li class="nav-item">
                        <a href="{{ route('cajones.index') }}" class="button">
                            <i class="material-icons">inbox</i>
                            <span>Cajones</span>
                        </a>
                    </li>
                    
                    <li class="{{ Request::is('caja*') ? 'active' : '' }}">
                        <a href="{{ route('caja.index') }}"> 
                            <i class="material-icons">account_balance_wallet</i>
                            <span>Caja</span>
                        </a>
                    </li>
                    
                    @if($item_configuracion)
                    <li class="parent">
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">{{ $item_configuracion['icon'] }}</i>
                            <span>{{ $item_configuracion['name'] }}</span>
                        </a>
                        <ul class="ml-menu">
                            @foreach($item_configuracion['sub_menu'] as $sub)
                                <li><a href ="{{ route($sub->menu_url) }}"><span>{{ $sub->name }}</span></a></li>
                            @endforeach 
                        </ul>
                    </li>
                    @endif

                </ul>
            </div>

        </aside>
        <!-- #END# Left Sidebar -->