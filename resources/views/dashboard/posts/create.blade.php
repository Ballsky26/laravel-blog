@extends('dashboard.layouts.main')
@section('title')
<h4>{{ $subtitle }}</h4>
@endsection
@section('content')
<div class="col-lg-8">
  <form method="POST" action="/dashboard/posts">
    @csrf
    <div class="mb-3">
      <label for="title" class="form-label">Judul</label>
      <input type="text" class="form-control @error('title') is-invalid @enderror" id="title" name="title" placeholder="Masukkan Judul Posts" autofocus value="{{ old('title') }}">
      @error('title')
      <div class="invalid-feedback">
        {{$message}}
      </div> 
      @enderror 
    </div>
    <div class="mb-3">
      <label for="slug" class="form-label">Slug</label>
      <input type="text" class="form-control  @error('slug') is-invalid @enderror" id="slug" name="slug" placeholder="Masukkan Slug" value="{{ old('slug') }}">
      @error('slug')
      <div class="invalid-feedback">
        {{$message}}
      </div> 
      @enderror 
    </div>
    <div class="mb-3">
      <label for="category" class="form-label">Category</label>
      <select class="form-select" name="category_id">
        <option selected>Pilih Category</option>
        @foreach ($categories as $category)
        @if(old('category_id') == $category->id)
        <option value="{{ $category->id }}" selected>{{ $category->name }}</option>
        @else
        <option value="{{ $category->id }}">{{ $category->name }}</option>
        @endif
        @endforeach
      </select>
    </div>
    <div class="mb-3">
      <label for="body" class="form-label">Isi Post</label>
      <input id="body" type="hidden" name="body" value="{{ old('body') }}">
      @error('body')
      <p class="text-danger">{{ $message }}</p>
      @enderror
      <trix-editor input="body"></trix-editor>
    </div>
    <button type="submit" class="btn btn-primary">Simpan</button>
  </form>
</div>

<script>
  const title = document.querySelector('#title');
  const slug = document.querySelector('#slug');

  title.addEventListener('change', function(){
    fetch('/dashboard/posts/checkSlug?title=' + title.value)
    .then(response => response.json())
    .then(data => slug.value = data.slug)
  });

  document.addEventListener('trix-file-accept', function(e){
    e.preventDefault();
  })
</script>
@endsection
