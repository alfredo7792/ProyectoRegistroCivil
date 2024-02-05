<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> @yield('titulo')</title>
    @yield('script')
    <script src="https://kit.fontawesome.com/2fc4256538.js" crossorigin="anonymous"></script>
    <link href="{{asset('/css/bootstrap.min.css')}}" rel="stylesheet"
         crossorigin="anonymous">
    <script src="{{asset('/js/bootstrap.bundle.min.js')}}"
         crossorigin="anonymous">
    </script>
</head>
<style>
    body {
      padding-bottom: 100px; /* Ajusta este valor según la altura del footer */
    }
  </style>
  
<body>
    <nav class="navbar bg " data-bs-theme="dark" style="background: #004370;">
        <div class="container-fluid d-inline">

            <a class="navbar-brand">
                <div class="row">
                    <div class="col-auto">
                        <img src="{{ asset('images/Logo-Login.png') }}" alt="Logo" width="220" height="90"
                        class="d-inline-block align-text-top">
                    </div>
                    
                    <div class="col-auto my-auto" style="font-size: 24px;">
                        @yield('subtitulo')
                    </div>
                </div>




            </a>


        </div>
    </nav>

   
        @yield('cuerpo')


     

    


    <footer class="text-white text-center" style="background-color: #7E0047; position: fixed; bottom: 0; width: 100%; ">
        <!-- Grid container -->
        <div class="container p-4 d-flex flex-column"  ></div>
        <!-- Grid container -->

        <!-- Copyright -->
        <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2023 Copyright: RENIEC -GTI - SGIS

        </div>

    </footer>

</body>

</html>
