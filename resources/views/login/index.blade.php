@extends('layouts.main')
@section('content')

<div class="row justify-content-center">
    <div class="col-md-4">
      @if (session()->has('success'))
      <div class="alert alert-success" role="alert">
          {{ session('success') }}
      </div>
      @endif
        <main class="form-signin mt-5 mb-6">
            <h1 class="h3 mb-3 fw-normal text-center">Please Login</h1>
            <form>
              {{-- <img class="mb-4" src="../assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> --}}
              <div class="form-floating">
                <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                <label for="floatingInput">Email address</label>
              </div>
              <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                <label for="floatingPassword">Password</label>
              </div>
              <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">Login</button>
            </form>
            <small class="d-block text-center mt-3">Belum Registrasi> <a href="/register">Daftar Sekarang</a></small>
          </main>
    </div>
</div>

@endsection