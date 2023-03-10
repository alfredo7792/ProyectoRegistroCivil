<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    public $table ='users';
    protected $primarykey="id";
    protected $fillable = ['name','fotoPerfil','email','password','idRol'];
    protected $hidden = [
        'remenber_token',
        'update_at',
    ];
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function rol(){
        return $this->HasOne(Rol::class,'idRol','idRol');
    }
}
