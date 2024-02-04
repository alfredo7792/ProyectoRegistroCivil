@extends('plantillaConsultas.Acta')
@section('titulo', 'Estado DNI')
@section('subtitulo', 'Consulta el Estado de DNI')
@section('cuerpo')
<div class="alert alert-success" role="alert">
    <h4 class="alert-heading">Bienvenido a consulta de estadod e tramite de DNI</h4>
    <p>Usted sabrá/conocera de manera detallada el estado de su tramite de su DNI</p>
    <hr>
    <p class="mb-0">Aquí podrá consultar el estado del último trámite de su DNI/DNIe con el número de su documento de identidad y seleccionado el tipo Tramite. Los datos mostrados en nuestro sistema aparecerán hasta un mes después que haberle entregado su documento.</p>
  </div>

  <form class="row g-3">
    <div class="col-auto">
      <label for="staticEmail2" class="visually-hidden">DNI</label>
      <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="email@example.com">
    </div>
    <div class="col-auto">
      <label for="inputPassword2" class="visually-hidden">DNI</label>
      <input type="text" class="form-control"  placeholder="DNI">
    </div>
    <div class="col-auto">
      <button type="submit" class="btn btn-success mb-3">Consultar</button>
    </div>
  </form>
@endsection
