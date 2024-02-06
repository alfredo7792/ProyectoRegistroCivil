@extends('plantillaConsultas.Acta')
@section('titulo', 'Estado DNI')
@section('subtitulo', 'Consulta el Estado de DNI')
@section('cuerpo')
<div class="container my-2 p-4 border w-75">
  <div class="row">
   <h2 style="color:#004370; font-size:23px"> Nombres</h2>
  </div>
    <hr style="color: #004370">
    
    <div class="row">
      @foreach ($solicitud as $s)
      <div class="col"> <h6><small class="text-body-secondary">Numero de DNI: {{$s->DNI_Titular}}</small></h6></div>
      <div class="col"> <h6><small class="text-body-secondary">Tipo de Trámite: {{$s->tipoSolicitud}}</small></h6></div>
      <div class="col"> <h6><small class="text-body-secondary">Fecha de Trámite: {{$s->solFecha}}</small></h6></div>
      <div class="col"> <h6><small class="text-body-secondary">Fecha probable de Entrega: {{$s->fechaEnvioReg}}</small></h6></div>
      @endforeach
     
    </div>

    
    <div class="row">
      <div class="col">
        <div class="row">
          <div class="col">
            <h5 style="font-size:16px; color:#004370">Leyenda del Grafico</h5>
           <div style="font-size:11px" class="text-body-secondary">
            <p><i class="fa-solid fa-circle" style="color: #FFC107"></i> Pendiente</p>
            <p><i class="fa-solid fa-circle" style="color: #0DCAF0"></i> En Proceso</p>
            <p><i class="fa-solid fa-circle" style="color: #198754"></i> Aceptado o en agencia</p>
            <p><i class="fa-solid fa-circle" style="color: #0969e7"></i> Entregado</p>
            <p><i class="fa-solid fa-circle" style="color: #DC3545"></i> Rechazado</p>
           </div>
          
          </div>
          <div class="col m-auto">
            
            @if ($solicitud[0]->solEstado=="Pendiente")
            <div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
              <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" style="width: 25%"></div>
            </div>
            @else
              @if ($solicitud[0]->solEstado=="En Proceso")
              <div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
                <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" style="width: 50%"></div>
              </div>
              @else
                  @if ($solicitud[0]->solEstado=="Aceptado")
                  <div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" style="width: 75%"></div>
                  </div>
                  @else
                    @if ($solicitud[0]->solEstado=="Entregado")
                    <div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                      <div class="progress-bar progress-bar-striped progress-bar-animated bg-primary" style="width: 100%"></div>
                    </div>
                    @else
                    <div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                      <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" style="width: 100%"></div>
                    </div>
                    @endif
                      
                  @endif
              @endif
                
            @endif
           
          </div>
        </div>
      </div>
      <div class="vr"></div>
      <div class="col" style="color: #004370">
        <h5  style="font-size:16px">Estado de Tramite</h5>
        @if ($solicitud[0]->solEstado=="Pendiente")
        <h1 style="font-size:51px">25%</h1>
        <h3 style="font-size:17px">{{$solicitud[0]->solEstado}}</h3>
            @else
              @if ($solicitud[0]->solEstado=="En Proceso")
              <h1 style="font-size:51px">50%</h1>
              <h3 style="font-size:17px">{{$solicitud[0]->solEstado}}</h3>
              @else
                  @if ($solicitud[0]->solEstado=="Aceptado")
                  <h1 style="font-size:51px">75%</h1>
                  <h3 style="font-size:17px">{{$solicitud[0]->solEstado}}</h3>
                  @else
                    @if ($solicitud[0]->solEstado=="Entregado")
                    <h1 style="font-size:51px">100%</h1>
                    <h3 style="font-size:17px">{{$solicitud[0]->solEstado}}</h3>
                    @else
                    <h1 style="font-size:51px">100%</h1>
                    <h3 style="font-size:17px">{{$solicitud[0]->solEstado}}</h3>
                    @endif
                      
                  @endif
              @endif
                
            @endif
        
      </div>
    </div>
</div>


@endsection

