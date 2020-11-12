@extends('layout')
@section('titulo')
    Equipas
@endsection

@section('conteudo')
@if(isset($equipa->id_equipa))
    <h3>Detalhes da equipa {{$equipa->id_equipa}}</h3>
    <b>Designação: </b>{{$equipa->designacao}}<br>    
    <b>Designação curta: </b>{{$equipa->designacao_curta}}<br>    
    <b>localidade: </b>{{$equipa->localidade}}<br>
    <b>Jogadores: </b> <br>
    @foreach($equipa->jogadores as $jogador)
        <a style="color: black" href="{{route('jogadores.show', ['id' => $jogador->id_jogador])}}">
        <li>{{$jogador->Nome}}<br></li>
    @endforeach
@else
    <h3 style="color: ff0000">ERRO!</h3>
@endif
@endsection