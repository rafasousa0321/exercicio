@extends('layout')
@section('titulo')
    Equipas
@endsection

@section('conteudo')
@if(isset($jogador->id_jogador))
    <h3>Detalhes do jogador {{$jogador->id_jogador}}</h3>
    <b>Nome: </b>{{$jogador->Nome}}<br>    
    <b>Nacionalidade: </b>{{$jogador->Nacionalidade}}<br>    
    <b>Data de nascimento: </b>{{$jogador->data_nascimento}}<br>
    <b>Equipa: </b> <br>
    <a style="color: black" href="{{route('equipas.show', ['id' => $jogador->equipas->id_equipa])}}">
    <li>{{$jogador->equipas->designacao}}<br></li>
@else
    <h3 style="color: ff0000">ERRO!</h3>
@endif
@endsection