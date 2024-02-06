@extends('plantillaConsultas.Acta')
@section('titulo', 'Estado DNI')
@section('subtitulo', 'Consulta el Estado de DNI')
@section('cuerpo')
<div class="container my-2 p-4 border w-75">
  <div class="row">
   <h2 style="color:#004370; font-size:30px"> @foreach ($solicitud as $s)
    {{$s->nombre_solicitante}}
    @endforeach </h2>
  </div>
    <hr style="color: #004370">
    
    <div class="row " >
      @foreach ($solicitud as $s)
      <div class="col"> <h5><small class="text-body-secondary">Numero de DNI: {{$s->DNI_Titular}}</small></h5></div>
      <div class="col"> <h5><small class="text-body-secondary">Tipo de Trámite: {{$s->tipoSolicitud}}</small></h5></div>
      <div class="col"> <h5><small class="text-body-secondary">Fecha de Trámite: {{$s->solFecha}}</small></h5></div>
      <div class="col"> <h5><small class="text-body-secondary">Fecha probable de Entrega: {{$s->fechaEnvioReg}}</small></h5></div>
      @endforeach
     
    </div>

    
    <div class="row">
      <div class="col">
        <div class="row">
          <div class="col-4">
            <h5 style="font-size:19px; color:#004370">Leyenda del Grafico</h5>
           <div style="font-size:15px" class="text-body-secondary">
            <p><i class="fa-solid fa-circle" style="color: #FFC107"></i> Pendiente</p>
            <p><i class="fa-solid fa-circle" style="color: #0DCAF0"></i> En Proceso</p>
            <p><i class="fa-solid fa-circle" style="color: #198754"></i> Aceptado o en agencia</p>
            <p><i class="fa-solid fa-circle" style="color: #0969e7"></i> Entregado</p>
            <p><i class="fa-solid fa-circle" style="color: #DC3545"></i> Rechazado</p>
           </div>
          
          </div>
          <div class="col m-auto">
            
            @if ($solicitud[0]->solEstado=="Pendiente")
            <div class="row  m-auto text-center"  style="color: #004370">
              <h5  style="font-size:19px">Estado de Tramite</h5>
              <h1 style="font-size:70px">25%</h1>
            </div>
            <div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
              <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" style="width: 25%"></div>
            </div>
            <div class="row m-auto text-center" style="color: #004370">
              <h3 style="font-size:17px">{{$solicitud[0]->solEstado}}</h3>
            </div>
            
            @else
              @if ($solicitud[0]->solEstado=="En Proceso")
              <div class="row  m-auto text-center"  style="color: #004370">
                <h5  style="font-size:19px">Estado de Tramite</h5>
                <h1 style="font-size:70px">50%</h1>
              </div>
              <div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
                <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" style="width: 50%"></div>
              </div>
              <div class="row m-auto text-center" style="color: #004370">
                <h3 style="font-size:17px">{{$solicitud[0]->solEstado}}</h3>
              </div>
              @else
                  @if ($solicitud[0]->solEstado=="Aceptado")
                  <div class="row  m-auto text-center"  style="color: #004370">
                    <h5  style="font-size:19px">Estado de Tramite</h5>
                    <h1 style="font-size:70px">75%</h1>
                  </div>
                  <div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" style="width: 75%"></div>
                  </div>
                  <div class="row m-auto text-center" style="color: #004370">
                    <h3 style="font-size:17px">{{$solicitud[0]->solEstado}}</h3>
                  </div>
                  @else
                    @if ($solicitud[0]->solEstado=="Entregado")
                    <div class="row  m-auto text-center"  style="color: #004370">
                     
                      <h5  style="font-size:19px">Estado de Tramite</h5>
                      <h1 style="font-size:70px">100%</h1>
                    </div>
                    <div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                      <div class="progress-bar progress-bar-striped progress-bar-animated bg-primary" style="width: 100%"></div>

                    </div>
                    <div class="row m-auto text-center" style="color: #004370">
                      <h3 style="font-size:17px">{{$solicitud[0]->solEstado}}</h3>
                    </div>
                    
                    @else
                    <div class="row  m-auto text-center"  style="color: #004370">
                      <h5  style="font-size:19px">Estado de Tramite</h5>
                      <h1 style="font-size:70px">100%</h1>
                    </div>
                    <div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                      <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" style="width: 100%"></div>
                    </div>
                    <div class="row m-auto text-center" style="color: #004370">
                      <h3 style="font-size:17px">{{$solicitud[0]->solEstado}}</h3>
                    </div>
                    @endif
                      
                  @endif
              @endif
                
            @endif
           
          </div>
        </div>
      </div>
      
    </div>
</div>


@endsection

