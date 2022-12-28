<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
      <a class="navbar-brand" href="/">Ballsky Blog</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link {{ ($active === "home") ? 'active' : '' }}" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($active === "about") ? 'active' : '' }}" href="/about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($active === "posts") ? 'active' : '' }}" href="/posts">Blog</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($active === "categories") ? 'active' : '' }}" href="/categories">Kategori</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($active === "login") ? 'active' : '' }}" href="/login"><i class="bi bi-box-arrow-in-right"></i> Login</a>
          </li>
        </ul>
      </div>
    </div>
</nav>
 
    {{-- <nav class="d-flex flex-wrap justify-content-center py-3 bg-dark text-white">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        <span class="fs-4 text-white">Ballsky Blog</span>
      </a>
      <ul class="nav nav-pills">
        <li class="nav-item"><a href="/" class="nav-link {{ ($active === "home") ? 'active' : '' }}">Home</a></li>
        <li class="nav-item"><a href="/about" class="nav-link {{ ($active === "about") ? 'active' : '' }}">About</a></li>
        <li class="nav-item"><a href="/posts" class="nav-link {{ ($active === "posts") ? 'active' : '' }} ">Blog</a></li>
        <li class="nav-item"><a href="/categories" class="nav-link {{ ($active === "categories") ? 'active' : '' }}">Kategori</a></li>
      </ul>
    </nav> --}}