<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $title = '';
        if (request('category')) {
            $category = Category::firstWhere('slug', request('category'));
            $title = ' ' . $category->name;
        }

        if (request('author')) {
            $author = User::firstWhere('username', request('author'));
            $title = ' ' . $author->name;
        }
        return view(
            'posts',
            [
                'title' => 'Semua Postingan' . $title,
                'active' => 'posts',
                'subtitle' => 'Halaman Posts',
                'posts' => Post::latest()->filter(request(['search', 'category', 'author']))->paginate(7)->withQueryString()
            ]
        );
    }
    public function show(Post $post)
    {
        return view('post', [
            'title' => 'Detail Post',
            'active' => 'posts',
            'subtitle' => 'Halaman Detail Post',
            "post" => $post
        ]);
    }
}
