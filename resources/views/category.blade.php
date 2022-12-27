@extends('layouts.main')

@section('content')

<h5 class="mb-2">Post Category : {{ $category }}</h5>
@foreach ($posts as $post)
<article class="mb-2">
    <h2><a href="/posts/{{ $post->slug }}">{{ $post->title }}</a></h2>
    <p>{{ $post->excerpt }}</p>
</article>
@endforeach
  
@endsection
