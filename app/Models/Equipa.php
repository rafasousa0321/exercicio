<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Equipa extends Model
{
    use HasFactory;

    protected $primaryKey="id_equipa";
    protected $table="equipas";

    public function jogadores(){
        return $this->hasMany('App\Models\Jogador', 'id_equipa');
    }
}
