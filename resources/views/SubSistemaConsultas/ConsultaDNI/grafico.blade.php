@extends('plantillaConsultas.Acta')
@section('titulo', 'Estado DNI')
@section('subtitulo', 'Consulta el Estado de DNI')
@section('cuerpo')
<div class="row">
Nombres completos de la persona
</div>
<hr>

<div class="row">
  <div class="col">Numero de DNI</div>
  <div class="col">tipo de tramite</div>
  <div class="col">Fecha de tramite</div>
  <div class="col">fecha probable de entrega</div>
</div>

<div class="row">
  <div class="col">
    <div class="row">
      <div class="col">
        <h5>Leyenda del Grafico</h5>
        <p>Inicio</p>
        <p>En Proceso</p>
        <p>En Agencia</p>
        <p>Entregado</p>
        <p>Rechazado</p>
      </div>
      <div class="col">grafico</div>
    </div>
  </div>
  <div class="vr"></div>
  <div class="col">
    <h5>Estado de Tramite</h5>
    <h1>100%</h1>
    <h3>Aca va el estado actual del tramite</h3>
  </div>
</div>


@endsection

