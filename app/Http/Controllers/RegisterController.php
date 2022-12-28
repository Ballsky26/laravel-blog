<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register.index', [
            'title' => 'Halaman Register',
            'active' => 'login'
        ]);
    }
    public function store(Request $request)
    {
        $validatedData = $request->validate(
            [
                'name' => 'required',
                'username' => 'required',
                'email' => 'required|email:dns|unique:users',
                'password' => 'required'
            ],
            [
                'name.required' => 'Nama Lengkap belum diisi',
                'username.required' => 'Username belum diisi',
                'email.required' => 'Email belum diisi',
                'email.unique' => 'Email ini sudah ada',
                'password.required' => 'Password belum di isi'
            ]
        );

        // $validatedData['password'] = bcrypt($validatedData['pasword']);
        $validatedData['password'] = Hash::make($validatedData['password']);
        User::create($validatedData);
        // $request->session()->flash('success', 'Berhasil Buat Akun, Silahkan login');
        return redirect('login')->with('success', 'Berhasil Buat Akun, Silahkan login');
    }
}
