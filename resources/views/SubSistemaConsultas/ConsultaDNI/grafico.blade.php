@extends('plantillaConsultas.Acta')
@section('titulo', 'Estado DNI')
@section('subtitulo', 'Consulta el Estado de DNI')
@section('cuerpo')
<div class="container my-2 p-4 border">
  <div class="row">
   <h2 style="color:#004370; font-size:22px"> Nombres</h2>
  </div>
    <hr style="color: #004370">
    
    <div class="row">
      <div class="col"> <h6><small class="text-body-secondary">Numero de DNI</small></h6></div>
      <div class="col"> <h6><small class="text-body-secondary">Tipo de Trámite</small></h6></div>
      <div class="col"> <h6><small class="text-body-secondary">Fecha de Trámite</small></h6></div>
      <div class="col"> <h6><small class="text-body-secondary">Fecha probable de Entrega</small></h6></div>
    </div>
    
    <div class="row">
      <div class="col">
        <div class="row">
          <div class="col">
            <h5 style="font-size:15px; color:#004370">Leyenda del Grafico</h5>
           <div style="font-size:10px" class="text-body-secondary">
            <p><i class="fa-solid fa-circle" style="color: #FFC107"></i> En Proceso</p>
            <p><i class="fa-solid fa-circle" style="color: #0DCAF0"></i> En Agencia</p>
            <p><i class="fa-solid fa-circle" style="color: #198754"></i> Entregado</p>
            <p><i class="fa-solid fa-circle" style="color: #DC3545"></i> Rechazado</p>
           </div>
          
          </div>
          <div class="col m-auto">
            <div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
              <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" style="width: 75%"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="vr"></div>
      <div class="col" style="color: #004370">
        <h5  style="font-size:15px">Estado de Tramite</h5>
        <h1 style="font-size:50px">100%</h1>
        <h3 style="font-size:16px">Aca va el estado actual del tramite</h3>
      </div>
    </div>
</div>


@endsection

