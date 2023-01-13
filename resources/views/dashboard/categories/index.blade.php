@extends('dashboard.layouts.main')
@section('title')
<h4>{{ $subtitle }}</h4>
@endsection
@section('content')
@if (session()->has('success'))
      <div class="alert alert-success" role="alert">
          {{ session('success') }}
      </div>
@endif
<div class="table-responsive text-nowrap">
  <a href="/dashboard/categories/create" class="btn btn-primary btn-sm mb-3">Tambah Data</a>
    <table class="table table-bordered">
      <thead>
        <tr>
          <th>No</th>
          <th>Nama Category</th>
          <th>Aksi</th>
        </tr>
      </thead>
      <tbody>
        @foreach ($categories as $category)  
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $category->name }}</td>
            <td><a href="/dashboard/categories/{{ $category->id }}" class="btn btn-info btn-sm">Detail</a>
            <a href="/dashboard/categories/{{ $category->id }}/edit" class="btn btn-warning btn-sm">Edit</a>
            <form action="/dashboard/categories/{{ $category->id }}" method="POST" class="d-inline">
            @method('delete')
            @csrf
            <button class="btn btn-danger btn-sm" onclick="return confirm('Apakah data ini mau di hapus?')">Delete</button>
            </form>
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
@endsection
