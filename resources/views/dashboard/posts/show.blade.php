@extends('dashboard.layouts.main')
@section('title')
<h4>{{ $subtitle }}</h4>
@endsection
@section('content')
<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $post->title }}</h1>
           <a href="/dashboard/posts" class="btn btn-secondary">Kembali</a>
           <a href="" class="btn btn-warning">Edit</a>
           <a href="" class="btn btn-danger">Delete</a>
           <br>
            <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
           <article class="my-3 fs-5">
               {!! $post->body !!}
           </article>
        </div>
    </div>
</div>
@endsection