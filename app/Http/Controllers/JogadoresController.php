<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Jogador;

class JogadoresController extends Controller
{
    public function index(){
        $jogadores = Jogador::all();
        return view ('jogadores.index', [
            'jogadores'=>$jogadores
        ]);
    }

    public function show(Request $req){
        $idJogador = $req ->id;
        $jogador = Jogador::where('id_jogador', $idJogador)->with('equipas')->first();
        return view ('jogadores.show', [
            'jogador'=>$jogador
        ]);
    }
}
