<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view(
            'home',
            [
                'title' => 'Home',
                'active' => 'home',
                'subtitle' => 'Halaman Home',
                'image1' => 'Foto1.JPG',
                'image2' => 'Foto2.JPG',
                'image3' => 'Foto3.JPG'
            ]
        );
    }
}
