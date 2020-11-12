@extends('layout')
@section('titulo')
    Equipas
@endsection

@section('conteudo')
    <h3>Equipas:</h3>
    @foreach($equipas as $equipa)
        <li>
        <b><a style="color: black" href="{{route('equipas.show', ['id'=>$equipa->id_equipa])}}"></b>
            {{$equipa->designacao}}
        </li>
    @endforeach
@endsection