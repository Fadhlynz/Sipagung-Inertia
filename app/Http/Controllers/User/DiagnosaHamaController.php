<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Hasilhama;
use Illuminate\Http\Request;

class DiagnosaHamaController extends Controller
{
    public function index()
    {
      return inertia('User/DiagnosaHama'); 
    }
    public function store(Request $request)
    {
       // Get Data dari Request 
      dd($request->kondisihama); 
      die;
        
    }
}
