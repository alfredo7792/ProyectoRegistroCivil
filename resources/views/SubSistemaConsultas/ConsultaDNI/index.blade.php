@extends('plantillaConsultas.Acta')
@section('titulo', 'Estado DNI')
@section('subtitulo', 'Consulta el Estado de DNI')
@section('cuerpo')

<div class="container my-5  border w-60">
  <div class="alert alert-success m-2" role="alert">
    <h4 class="alert-heading"><i class="fa-regular fa-bell"></i>   Bienvenido a consulta de estadod e tramite de DNI</h4>
    <p>Usted sabrá/conocera de manera detallada el estado de su tramite de su DNI</p>
    <hr>
    <p class="mb-0">Aquí podrá consultar el estado del último trámite de su DNI/DNIe con el número de su documento de identidad y seleccionado el tipo Tramite. Los datos mostrados en nuestro sistema aparecerán hasta un mes después que haberle entregado su documento.</p>
  </div>
  <div class="alert alert-primary m-2" role="alert">
    <h4 class="alert-heading text-center"><i class="fa-regular fa-circle-question"></i> <button type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target='#detalles'> Ayuda</button></h4>
    
   </div>



   

  <form class="row g-3 m-2 align">
    
    <div class="col-auto">
      <label  class="form-label">Ingrese numero DNI</label>
      
    </div>
    <div class="col-auto">
     
      <input type="text" class="form-control"  placeholder="DNI">
    </div>
    <div class="col-auto">
      <label  class="form-label">Tipo de tramite</label>
      
    </div>
   
    <div class="col-auto">
     
      <select class="form-select" aria-label="Default select example">

        <option selected value="1">Primera Vez</option>
        <option value="2">Duplicado</option>
        <option value="3">Renovacion</option>
      </select>
    </div>
    <div class="col-auto">
      
      <button type="submit" class="btn btn-success mb-3"><i class="fa-solid fa-magnifying-glass"></i> Consultar</button>
    </div>
  </form>


</div>


  <!-- Modal -->
<div class="modal fade" style="color: #004370" id="detalles" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Estimado Ciudadano</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body"  style="color: #004370">
        <div class="container-fluid">
          <div class="row">
              <div class="col">
                <p>Este servicio le permite consultar el estado del trámite de su DNI en cualquier momento del día, incluso hasta 1 mes después de efectuada la entrega. </p>
                <p>Estados mostrados en el sistema:</p>
              </div>
          </div>
          <hr>
          <div class="row" style="color: #004370">
            <table class="table table-light"  >
             
              <tbody >
                <tr class="table table-light">
                  <th scope="row">Pendiente</th>
                  <td>El tramite de DNI esta en proceso de evaluacion</td>
                </tr>
                <tr class="table table-light">
                  <th scope="row">En Proceso</th>
                  <td>El tramite del DNI se esta procesando</td>

                </tr>
                <tr class="table table-light">
                  <th scope="row">Aceptado</th>
                  <td>El tramite del DNI se ha completaod</td>
                </tr>
                <tr class="table table-light">
                  <th scope="row">Entregado</th>
                  <td>El DNI ha sido recogido/entregado por el ciudadano.</td>
                </tr>
                <tr class="table table-light">
                  <th scope="row">Rechazado</th>
                  <td>Requiere que el ciudadano se apersone o a la agencia donde lo realizo.</td>
                </tr>
              </tbody>
            </table>

          </div>

        </div>
      </div>
      <div class="modal-footer">
      Recomendamos que el ciudadano llame a la línea gratuita ALÓ RENIEC al 0800-11-040 para mayores alcances.
      </div>
    </div>
  </div>
</div>
@endsection
