@extends('dashboard.layouts.main')
@section('title')
<h4>{{ $subtitle }}</h4>
@endsection
@section('content')
<div class="col-lg-8">
    <form method="POST" action="/dashboard/categories">
      @csrf
      <div class="mb-3">
        <label for="name" class="form-label">Nama Category</label>
        <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name" placeholder="Masukkan Nama Category" autofocus value="{{ old('name') }}">
        @error('name')
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
      <a href="/dashboard/categories" class="btn btn-secondary">Batal</a>
      <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
  </div>
@endsection