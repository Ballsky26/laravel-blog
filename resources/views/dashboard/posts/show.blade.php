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
           <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning">Edit</a>
           <form action="/dashboard/posts/{{ $post->slug }}" method="POST" class="d-inline">
            @method('delete')
            @csrf
            <button class="btn btn-danger" onclick="return confirm('Apakah data ini mau di hapus?')">Delete</button>
            </form>
           <br>
            <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
           <article class="my-3 fs-5">
               {!! $post->body !!}
           </article>
        </div>
    </div>
</div>
@endsection