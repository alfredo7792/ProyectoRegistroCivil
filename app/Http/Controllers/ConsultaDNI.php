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
      $dni=$request->dni;
      $tipo=$request->tipo_dni;

      $solicitud=SolicitudDNI::join("persona","dni","=","dni_titular")
      ->select('*')->join('tipo_solicitud_dni','tipo_solicitud_dni.idTipoSolicitud','=','solicitud_dni.idTipoSolicitud')
      ->where('DNI_Titular','=',$dni)
      ->where('solicitud_dni.idTipoSolicitud','=',$tipo)
      ->take(1)
      ->get();
     //return $solicitud;
    
    return view('SubSistemaConsultas.ConsultaDNI.grafico',compact('solicitud'));
   }
}
