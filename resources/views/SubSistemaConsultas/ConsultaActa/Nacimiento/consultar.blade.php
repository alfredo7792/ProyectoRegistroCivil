@extends('plantillaConsultas.Acta')
@section('titulo','Acta Nacimiento')
@section('subtitulo','Consulta Acta Nacimiento')
@section('cuerpo')
<form action="{{route('SearchNacimiento')}}" method="post" class="px-5 py-2">
   @csrf
   
    <div>
        <img src="{{asset('images/nacimiento.png')}}" alt="defuncion" width="100px" class="img-fluid d-block mx-auto">
    </div>
    
      <label class="form-label" for="">Fecha de Nacimiento</label> 
       <input type="date" class="form-control @error('fecha') is-invalid @enderror" name="fecha" placeholder="Fecha(dd/mm/yyy)">
       @error('fecha')
       <div class="invalid-feedback">
        Ingresar la fecha de nacimiento
       </div>
       @enderror
     <div class="row"> 
    <div class="col-sm-12 col-md-6">
      <label class="form-label" for="">Primer Apellido</label> 
      <input type="text" class="form-control @error('primer_apellido') is-invalid @enderror" name="primer_apellido" placeholder="Primer Apellido">
      @error('primer_apellido')
      <div class="invalid-feedback">
       Ingresar el primer apellido
      </div>
      @enderror
    </div>
    <div class="col-sm-12 col-md-6">
      <label  class="form-label" for="">Segundo Apellido</label>
       <input type="text" class="form-control @error('segundo_apellido') is-invalid @enderror" name="segundo_apellido" placeholder="Segundo Apellido">
       @error('segundo_apellido')
       <div class="invalid-feedback">
        Ingresar el segundo apellido
       </div>
       @enderror
    </div>
    </div>
    <div class="mb-3">
       <label class="form-label" for="" class="form-label">Prenombres</label> 
       <input type="text" class="form-control @error('prenombres') is-invalid @enderror" name="prenombres" placeholder="Prenombres">
       @error('prenombres')
       <div class="invalid-feedback">
        Ingresar el nombres del nacido
       </div>
       @enderror
    </div>
    <div class="row mx-5">
        <div class="col-6">
       <button type="" class="btn btn-danger px-5" >Salir</button> 
    </div>
    <div class="col-6">
       <button type="submit" class="btn btn-success px-3">Consultar</button>
    </div>
    </div>


</form>
@endsection