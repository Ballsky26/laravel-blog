@extends('dashboard.layouts.main')
@section('title')
<h4>{{ $subtitle }}</h4>
@endsection
@section('content')
<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $category->name }}</h1>
           <article class="my-3 fs-5">
               {!! $category->slug !!}
           </article>
           <a href="/dashboard/categories" class="btn btn-secondary">Kembali</a>
        </div>
    </div>
</div>
@endsection