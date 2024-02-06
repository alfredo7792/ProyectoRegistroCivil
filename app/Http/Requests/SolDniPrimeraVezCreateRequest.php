<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SolDniPrimeraVezCreateRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'codigo_recibo'=>'required',
        ];
    }

    public function messages()
    {
        return [
            'codigo_recibo.required'=>'Ingrese el codigo de servicio presentado',
        ];
    }
    
}
