<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class AuthorController extends Controller
{
    public function show(User $author)
    {
        return view('posts', [
            'title' => "Daftar Postingan : $author->name",
            'subtitle' => 'Halaman Detail Author',
            'active' => 'author',
            'posts' => $author->posts->load('category', 'author')
        ]);
    }
}
