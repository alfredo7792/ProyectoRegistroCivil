<?php

namespace App\Http\Controllers;

use App\Models\SolicitudDNI;
use Illuminate\Http\Request;

class ConsultaDNI extends Controller
{
   public function index(){
 
    return view('SubSistemaConsultas.ConsultaDNI.index');
   }

   public function estadoDNI(Request $request){
      $this->validate(
         $request,
         [
           'dni' => 'required|numeric',
           'tipo_dni' => 'required'
         ],
         [
           'dni.required'=>'Ingresar el numero de DNI',
           'dni.numeric'=>'Ingresar numero de 8 digitos',
           'primer_apellido.required'=>'Seleccionar el tipo de tramite'
         ]
       );
      $dni=$request->dni;
      $tipo=$request->tipo_dni;

      $solicitud=SolicitudDNI::join("persona","dni","=","dni_titular")
      ->select('*')->join('tipo_solicitud_dni','tipo_solicitud_dni.idTipoSolicitud','=','solicitud_dni.idTipoSolicitud')
      ->where('DNI_Titular','=',$dni)
      ->where('solicitud_dni.idTipoSolicitud','=',$tipo)
      ->take(1)
      ->get();
      if (count($solicitud)==0) {
         $alert = "No existen tramiten pendientes";
         return redirect()->route('ConsultaDNI')->with('alert', $alert);
       }
       return view('SubSistemaConsultas.ConsultaDNI.grafico',compact('solicitud'));
       
     
    
    
   }
}
