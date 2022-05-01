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
       $kondisihama = $request->kondisihama;

       $inptanggal = date('Y-m-d H:i:s');

       $arbobot = array('0.8', '0.6',);
       $argejala = array();
       
       dd($kondisihama);
       die;
       for ($i = 0; $i < count($kondisihama); $i++) { $arkondisi=explode("_", $kondisihama[$i]); if
           (strlen($kondisihama[$i])> 1) {
           $argejala += array($arkondisi[0] => $arkondisi[1]);
           }
           }

    }
}
