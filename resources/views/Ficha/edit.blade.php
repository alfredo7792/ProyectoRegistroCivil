@extends('dashboard')
@section('titulo','Editar FICHA')

@section('contenido')
<div class="container">
    <h1 id="titulo" class="acta_title">EDITAR FICHA</h1>
    <form method="POST" action="{{route("Ficha.update",$ficha->idficha)}}" enctype="multipart/form-data">
        @method('PUT')
        @csrf
        <div class="row">
            <div class="col-8 form-group">
                <label class="control-label">CODIGO</label>
                <input type="text" style="color: blue"  class="form-control" value="{{$ficha->idficha}}" disabled >
            </div>

            <div class="col-8 form-group">
                <label class="control-label">Fecha de registro</label>
                <input type="text" class="form-control" value="{{$ficha->fecha_registro}}" id="fecha_registro" 
                    name="fecha_registro" >
            </div>

            <div class="col-8 form-group">
                <label class="control-label">Tipo de Ficha</label>
                <select name="tipoFicha" id="" class="form-control" {{$ficha->estado == 'Aprobado' ? 'disabled' : ''}}>
                    @foreach ($tipoFichas as $item)
                        <option value="{{ $item->idtipo }}" {{$item->idtipo == $ficha->idtipo ? 'selected' : ''}}>
                            {{ $item->nombre }}
                        </option>
                    @endforeach
                </select>
            </div>

            <div class="col-8 form-group">
                <label class="control-label">Certificado de NACIMIENTO /DEFUNCION / MATRIMONIO </label>
                <input type="file" class="form-control @error('archivo_certificado') is-invalid @enderror"
                    placeholder="Ingrese certificado" id="archivo_certificado" name="archivo_certificado"
                    value="{{ old('archivo_certificado') }}" x-data="showImage()" @change="showPreview(event)" >

               <iframe src="{{$ficha->ruta_certificado}}" id="preview" class="object-cover h-32 mt-2 w-60" height="400vh"> </iframe>
                    @error('archivo_certificado')
                    <span class="invalid feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
                
            </div>

            <div class="col-8 form-group flex">
                <div>
                    <button class="btn btn-primary boton"><i class="fas fa-save"></i> ACTUALIZAR</button>
                </div>
                <div></div>
                <div>
                    <a href="{{route('Ficha.cancelar') }}" class="btn btn-danger boton"><i class="fas fa-ban"></i> CANCELAR</a>
                </div>
            </div>
        </div>


    </form>
</div>
<script>
    function showImage() {
        return {
            showPreview(event) {
                if (event.target.files.length > 0) {
                    var src = URL.createObjectURL(event.target.files[0]);
                    var preview = document.getElementById("preview");
                    preview.src = src;
                    preview.style.display = "block";
                }
            }
        }
    }
</script>
<script>
    function mensaje() {
    $('#DNI').select2();
    $('#idLibro').select2();
    $('#idFolio').select2();
    }
    setTimeout(mensaje,500);
</script>
@endsection
