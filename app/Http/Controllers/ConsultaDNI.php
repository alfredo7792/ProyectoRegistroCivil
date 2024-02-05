<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ConsultaDNI extends Controller
{
   public function index(){

    return view('SubSistemaConsultas.ConsultaDNI.index');
   }

   public function estadoDNI(){
    return view('SubSistemaConsultas.ConsultaDNI.grafico');
   }
}
