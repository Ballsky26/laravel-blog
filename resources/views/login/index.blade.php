@extends('layouts.main')
@section('content')

<div class="row justify-content-center">
    <div class="col-md-4">
      @if (session()->has('success'))
      <div class="alert alert-success" role="alert">
          {{ session('success') }}
      </div>
      @endif
      @if (session()->has('loginError'))
      <div class="alert alert-danger" role="alert">
          {{ session('loginError') }}
      </div>
      @endif
        <main class="form-signin mt-5 mb-6">
            <h1 class="h3 mb-3 fw-normal text-center">Please Login</h1>
            <form action="/login" method="post">
              @csrf
              <div class="form-floating">
                <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" name="email" placeholder="Email" value="{{ old('email') }}" autofocus>
                <label for="email">Email address</label>
                @error('email')
                <div class="invalid-feedback">
                  {{$message}}
                </div> 
                @enderror 
              </div>
              <div class="form-floating">
                <input type="password" class="form-control  @error('password') is-invalid @enderror" name="password" id="password" placeholder="Password">
                <label for="password">Password</label>
                @error('password')
                <div class="invalid-feedback">
                  {{$message}}
                </div> 
                @enderror 
              </div>
              <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">Login</button>
            </form>
            <small class="d-block text-center mt-3">Belum Registrasi> <a href="/register">Daftar Sekarang</a></small>
          </main>
    </div>
</div>

@endsection