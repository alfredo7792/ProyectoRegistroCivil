@extends('dashboard')

@section('titulo','Tramites rechazados')
@section('buscar')
<div class="collapse" id="search-nav">
    <form class="navbar-left navbar-form nav-search mr-md-3" method="GET" role="search">
        <div class="input-group">
            <div class="input-group-prepend">
                <button type="submit" class="btn btn-search pr-1">
                    <i class="fa fa-search search-icon"></i>
                </button>
            </div>
            <input type="text" placeholder="Buscar por DNI" class="form-control" value="{{$busqueda}}" name="buscarpor" >
        </div>
    </form>

</div>
@endsection
@section('contenido')

            <div class="card">
                <div class="card-header">
                    <h3 id="titulo"  class="card-title">Tramites Rechazados</h3>
                </div>
                <div class="card-body">

                


                {{-- <div id="mensaje">
                    @if (session('datos'))
                    <div class="alert alert-warning alert-dismissible fade show mt-3 emergente" role="alert" style="color: white; background-color: rgb(183, 178, 31)" >
                        {{session('datos')}}
                    </div>
                    @endif
                </div> --}}

                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Codigo de solicitud</th>
                            <th scope="col">Nombre de l solicitante</th>
                            <th scope="col">Motivo de solicitud</th>
                            <th scope="col">Ultima fecha de solicitud</th>
                            <th scope="col">Motivo de rechazo</th>
                        </tr>
                        </thead>
                        <tbody>
                        @if (count($tramites)==0)
                            <tr>
                            <td colspan="3"><b>No hay registros</b></td>
                            </tr>
                            @else

                        @foreach ($tramites as $item)
                            <tr>
                                <td>{{$item->idSolicitud}}</td>
                                <td>{{$item->nombre_solicitante}}</td>
                                <td>{{$item->solMotivo}}</td>
                                <td>{{$item->solFecha}}</td>
                                <td>{{$item->descripcion}}</td>
                            </tr>
                        @endforeach
                        @endif
                        </tbody>
                    </table>
                {{$tramites->links()}}
                </div>

            </div>

    </div>
@endsection
