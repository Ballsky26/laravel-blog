<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    public function index()
    {
        return view('categories', [
            'title' => 'Kategori Postingan',
            'active' => 'categories',
            'subtitle' => 'Halaman Category',
            'categories' => Category::all()
        ]);
    }
    public function show(Category $category)
    {
        return view('posts', [
            'title' => "Kategori Postingan : $category->name",
            'subtitle' => 'Halaman Detail Category',
            'active' => 'categories',
            'posts' => $category->posts->load('category', 'author')
        ]);
    }
}
