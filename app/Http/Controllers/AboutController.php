<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        return view(
            'about',
            [
                'title' => 'About',
                'subtitle' => 'Halaman About',
                'active' => 'about',
                'name' => 'Syaiful Iqbal',
                'email' => 'syaiful26iqbal@gmail.com',
                'image' => 'Pas Foto Merah.jpg'
            ]
        );
    }
}
