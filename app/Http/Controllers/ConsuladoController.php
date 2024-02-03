<?php

namespace App\Http\Controllers;

use App\Models\Persona;
use App\Models\SolicitudDNI;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ConsuladoController extends Controller
{
    const PAGINATION=7;   

  
    public function index(Request $request)
    {
        $busqueda=$request->get('buscarpor');
        $tramites=SolicitudDNI::where('DNI_Titular','=',$busqueda)
        ->where('solEstado','like','%Rechazado%')
        ->paginate($this::PAGINATION);;


       // return view('persona.index',compact('personas','busqueda'));

        return view('SubSistemaConsultas.ConsultaConsulado.consulado',compact('tramites','busqueda'));
    }

    // public function cookie(Request $request){
    //     return Cookie::forever("mysite_search", json_encode(Session::get("search")));;
    // }
  

}
