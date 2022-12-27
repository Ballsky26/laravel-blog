@extends('layouts.main')
@section('subtitle')
    {{ $subtitle }}
@endsection
@section('content')
    <h1>{{ $name }}</h1>
    <p>{{ $email }}</p>
    <img src="img/{{ $image }}" alt="{{ $name }}" width="200" class="img-thumbnail rounded-circle"> 
@endsection

