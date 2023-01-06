@extends('dashboard.layouts.main')
@section('title')
<h4>{{ $subtitle }}</h4>
@endsection
@section('content')
<div class="table-responsive text-nowrap">
    <table class="table table-bordered">
      <thead>
        <tr>
          <th>No</th>
          <th>Judul</th>
          <th>Category</th>
          <th>Aksi</th>
        </tr>
      </thead>
      <tbody>
        @foreach ($posts as $post)  
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $post->title }}</td>
            <td>{{ $post->category->name }}</td>
            <td><a href="/dashboard/posts/{{ $post->slug }}" class="btn btn-info btn-sm">Detail</a>
            <a href="" class="btn btn-warning btn-sm">Edit</a>
            <a href="" class="btn btn-danger btn-sm">Delete</a></td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
@endsection