<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('login.index', [
            'title' => 'Halaman Login',
            'active' => 'login'
        ]);
    }
    public function auth(Request $request)
    {
        $credentials = $request->validate(
            [
                'email' => 'required|email',
                'password' => 'required'
            ],
            [
                'email.required' => 'Email belum diisi',
                'email.email' => 'Form ini hanya bisa diisi email',
                'password.required' => 'Password belum diisi'
            ]
        );

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();
            return redirect()->intended('/dashboard');
        }

        return back()->with('loginError', 'Gagal Login');
    }
    public function logout()
    {
        Auth::logout();

        request()->session()->invalidate();

        request()->session()->regenerateToken();

        return redirect('/');
    }
}
