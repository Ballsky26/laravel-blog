<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class AdminCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view(
            'dashboard.categories.index',
            [
                'title' => 'Ballsky | Categories',
                'subtitle' => 'Dashboard | Halaman Categories',
                'categories' => Category::all()
            ]
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view(
            'dashboard.categories.create',
            [
                'title' => 'Ballsky | Tambah Category',
                'subtitle' => 'Category | Halaman Tambah Category'
            ]
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'name' => 'required',
            'slug' => 'required',
        ], [
            'name.required' => 'Nama Category belum diisi!',
            'slug.required' => 'Slug belum diisi!'
        ]);

        Category::create($validateData);

        return redirect('/dashboard/categories')->with('success', 'Category Berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        return view(
            'dashboard.categories.show',
            [
                'title' => 'Ballsky | Detail Cateory',
                'subtitle' => 'Category | Halaman Detail Category',
                'category' => $category
            ]
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        return view(
            'dashboard.categories.edit',
            [
                'title' => 'Ballsky | Edit Category',
                'subtitle' => 'Category | Halaman Edit Category',
                'categories' => Category::all(),
                'category' => $category
            ]
        );
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        $validateData = $request->validate([
            'name' => 'required',
            'slug' => 'required',
        ], [
            'name.required' => 'Nama Category belum diisi!',
            'slug.required' => 'Slug belum diisi!'
        ]);

        Category::where('id', $category->id)
            ->update($validateData);

        return redirect('/dashboard/categories')->with('success', 'Category Berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        Category::destroy($category->id);
        return redirect('/dashboard/categories')->with('success', 'Category Berhasil dihapus');
    }
}
