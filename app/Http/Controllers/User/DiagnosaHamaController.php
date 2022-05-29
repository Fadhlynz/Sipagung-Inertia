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
    public function hasildiagnosahama(Request $request)
    {
      return inertia('User/HasilDiagnosaHama');
        
    }
}
