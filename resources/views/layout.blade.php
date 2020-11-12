<DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
            <title>@yield('titulo')</title>
            <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
            <link rel="stylesheet" href="{{asset('css/all.min.css')}}">
    </head>
    <body style="background-color: #e3e3e3">
    <div class="container">
                <div class="row">                    
                <div class="col-md-12">
                    <br>
                    </div> 
                    <div class="col-md-12">
                        @yield('conteudo')
                        <br>
                    </div> 
                    <div class="col-md-2">
                        <a style="color: black" href="{{route('equipas.index')}}"><i class="fas fa-arrow-right"></i>   Equipas</a>
                    </div>
                    <div class="col-md-2">
                        <a style="color: black" href="{{route('jogadores.index')}}"><i class="fas fa-arrow-right"></i>   Jogadores</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="{{asset('js/jquery.min.js')}}"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('js/all.min.js')}}"></script>
</html>