@extends('dashboard.layouts.main')
@section('title')
<h4>{{ $subtitle }}</h4>
@endsection
@section('content')
<h5 class="card-title text-primary">Selamat Datang {{ auth()->user()->name }} 🎉</h5>
@endsection