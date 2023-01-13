@extends('dashboard.layouts.main')
@section('title')
<h4>{{ $subtitle }}</h4>
@endsection
@section('content')
<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h1>{{ $post->title }}</h1>
           {{-- <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning">Edit</a>
           <form action="/dashboard/posts/{{ $post->slug }}" method="POST" class="d-inline">
            @method('delete')
            @csrf
            <button class="btn btn-danger" onclick="return confirm('Apakah data ini mau di hapus?')">Delete</button>
            </form> --}}
           <br>
           <p>{{ $post->created_at->diffForHumans() }}</p>
            @if ($post->image)
            <div style="max-height: 350px; overflow:hidden;">
            <img src="{{ asset('storage/'. $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
            </div>
            @else
            <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
           @endif

           <article class="my-3 fs-5">
               {!! $post->body !!}
           </article>
           <a href="/dashboard/posts" class="btn btn-secondary">Kembali</a>
        </div>
    </div>
</div>
@endsection