<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ficha extends Model
{
    use HasFactory;
    protected $table = 'ficha_registro';
    protected $primaryKey = 'idficha';
    protected $fillable = ['fecha_registro','ruta_certificado','estado','idtipo'];
    public $timestamps = false;

    public function acta(){
        return $this->HasOne(Acta::class,'idActa','idficha');
    }
    public function tipo(){
        return $this->HasOne(TipoFicha::class,'idtipo','idtipo');
    }

}
