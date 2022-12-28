@extends('layouts.main')
@section('content')

<div class="row justify-content-center">
    <div class="col-lg-5">
        <main class="form-registration mt-5 mb-6">
            <h1 class="h3 mb-3 fw-normal text-center">Form Register</h1>
            <form>
              <div class="form-floating">
                <input type="text" class="form-control rounded-top" id="name" name="name" placeholder="Name">
                <label for="name">Nama Lengkap</label>
              </div>
              <div class="form-floating">
                <input type="text" class="form-control" id="username" name="username" placeholder="Username">
                <label for="username">Username</label>
              </div>
              <div class="form-floating">
                <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                <label>Email address</label>
              </div>
              <div class="form-floating">
                <input type="password" class="form-control rounded-bottom" id="password" placeholder="Password" name="password">
                <label for="password">Password</label>
              </div>
              <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">Register</button>
            </form>
            <small class="d-block text-center mt-3">Sudah Punya Akun? <a href="/login">Login Sekarang</a></small>
          </main>
    </div>
</div>

@endsection