@extends('layout')
@section('titulo')
    Jogadores
@endsection

@section('conteudo')
    <h3>Jogadores:</h3>
    @foreach($jogadores as $jogador)
        <li>
        <b><a style="color: black" href="{{route('jogadores.show', ['id'=>$jogador->id_jogador])}}"></b>
            {{$jogador->Nome}}
        </li>
    @endforeach
@endsection