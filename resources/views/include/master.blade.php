<!DOCTYPE html>
<html>

<head>

    <title>Matisco Logística | @yield('title','Inventario')</title>

    @include('include.header')
    <style>
        .select2 {

            width: 100% !important;
        }
        @media (max-width: 767px) {
            /* Alineamos el botón y el logo uno al lado del otro */
            .navbar.header {
                display: flex !important;
                align-items: center;
                width: 100%;
            }

            .bars {
                flex-shrink: 0; /* Que el botón no se achique */
                padding: 10px 15px !important;
                margin-top: 0 !important;
            }

            .navbar-brand {
                margin-left: 0 !important;
                padding: 10px 5px !important;
                flex-grow: 1; /* Que el nombre ocupe el resto del espacio */
                display: flex !important;
                align-items: center;
            }

            .navbar-brand span {
                font-size: 16px !important;
                white-space: nowrap;
            }
            .navbar {
                margin-bottom: 0 !important; /* Quita el espacio de abajo de la barra */
                border: none !important;
                box-shadow: none !important;
            }
            .sidebar {
                margin-top: 0 !important;
                padding-top: 0 !important;
                top: 1 !important; /* Asegura que el menú empiece arriba de todo */
            }
            .sidebar .user-info {
                margin-top: 0 !important; /* Pega la caja gris al borde turquesa */
                padding: 20px 15px !important; /* Espacio interno para que la foto no toque el techo */
            }

            /* 3. ELIMINA EL HUECO ABAJO DE LA INFO DE USUARIO */
            .sidebar .user-info {   
                margin-bottom: 0 !important;
            }
            .sidebar .menu .list {
                margin-top: 0 !important; /* Pega el Dashboard a la info de usuario */
            }
        }    
        
            
    </style>
    <link rel="apple-touch-icon" href="{{ asset('img/logo.png') }}">
</head>

<body class="theme-teal" onload="loaded()">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Por favor espera...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="bars" style="float: left; padding: 20px; color: white; text-decoration: none; display: block;">
                   
                </a>
                <a class="navbar-brand" href="{{ url('/') }}" style="display: flex !important; align-items: center !important; flex-direction: row !important; text-decoration: none; width: auto;">
    
                    <span style="color: white !important; font-weight: bold; font-size: 25px; white-space: nowrap !important; display: inline-block !important;">
                        Matisco Logística
                    </span>
                    
                    <img src="{{ url('images/logo.png') }}" alt="logo" style="height: 55px; width: auto; display: inline-block !important; transform: translateY(6px) !important ; margin-left: -30px !important ; margin-right: 10px;">                    
                </a>
                
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>

        @include('include.sidebar')


        <section class="content">
            <div id="inventory" class="container-fluid">
                <div class="block-header">
                    <h2>@yield('page-title')</h2>
                </div>

                <!-- Widgets -->

                @yield('content')

            </div>
        </section>

        @include('include.footer')

        <script type="text/javascript">
            var base_url = "{{ url('/').'/' }}";
        </script>

        <script type="text/javascript">
            function loaded() {
                var segment3 = '{{ Request::segment(1) }}';
                var current_url = base_url + segment3;
                $('a[href="' + current_url + '"]').parents('.ml-menu').siblings('a').addClass('toggled');
                $('a[href="' + current_url + '"]').parents('.ml-menu').css('display', 'block');
            }
        </script>


        @stack('script')
    
    <script>
        function revisarAuditoria() {
            // 1. Si el usuario ya está en la página de Auditoría, ocultamos el badge de una
            if (window.location.href.indexOf("auditoria") > -1) {
                $('#badge-auditoria').hide();
                return;
            }

            // 2. Preguntamos a la ruta que creamos si hay algo nuevo
            $.get("{{ url('check-new-audit') }}", function(data) {
                if (data.novedades) {
                    // Si hay novedades, lo mostramos con un efecto suave (flex para que centre el !)
                    $('#badge-auditoria').css('display', 'flex').fadeIn();
                } else {
                    $('#badge-auditoria').hide();
                }
            });
        }

        // Ejecutamos la revisión cada 10 segundos
        setInterval(revisarAuditoria, 10000);
        // Revisamos también apenas carga la página
        $(document).ready(revisarAuditoria);
    </script>
           
        
</body>

</html>