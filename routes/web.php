<?php

use App\Http\Controllers\Admin\BasishamaController;
use App\Http\Controllers\Admin\BasispenyakitController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\GejalahamaController;
use App\Http\Controllers\Admin\GejalapenyakitController;
use App\Http\Controllers\Admin\HamaController;
use App\Http\Controllers\admin\KondisihamaController;
use App\Http\Controllers\Admin\MasterhamaController;
use App\Http\Controllers\Admin\MasterpenyakitController;
use App\Http\Controllers\Admin\PenyakitController;
use App\Http\Controllers\Admin\ProfileController;
use App\Http\Controllers\Admin\SettingsController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\User\BerandaController;
use App\Http\Controllers\User\DiagnosaHamaController;
use App\Http\Controllers\User\DiagnosaPenyakitController;
use App\Http\Controllers\User\KeteranganController;
use App\Http\Controllers\User\RiwayatPenyakitController;
use App\Http\Controllers\User\RiwayatHamaController;
use App\Models\User;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// default localhost:8000

Route::get('/', function () {
    return inertia('Home');
});

Route::get('/about', function () {
    return inertia('About');
});

Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login', [LoginController::class, 'checklogin']);

Route::get('/register', [LoginController::class, 'register']);
Route::post('/register', [LoginController::class, 'insert']);

// User Page
Route::get('/beranda', [BerandaController::class, 'index']);

Route::get('/diagnosa', function () {
    return inertia('PilihHama');
});

// Diagnosa Hama
Route::get('/diagnosa-hama', [DiagnosaHamaController::class, 'index']);
Route::post('/hasildiagnosa', [DiagnosaHamaController::class, 'store']);
Route::get('/hasildiagnosahama', [DiagnosaHamaController::class, 'hasildiagnosahama']);
// Riwayat Konsultasi Hama
Route::get('/riwayat-hama', [RiwayatHamaController::class, 'index']);

Route::get('/diagnosa-penyakit', [DiagnosaPenyakitController::class, 'index']);
Route::get('/riwayat-penyakit', [RiwayatPenyakitController::class, 'index']);
Route::get('/keterangan', [KeteranganController::class, 'index']);

Route::middleware('auth')->group(function () {
    Route::middleware('role:admin')->group(function(){
        Route::get('/dashboard', [DashboardController::class, 'index']);

        // Master Hama
        Route::get('/data-hama', [MasterhamaController::class, 'index']);
        // Data Hama
        Route::post('/hama', [HamaController::class, 'store']);
        Route::post('/hama-delete', [HamaController::class, 'delete']);
        Route::post('/hama-update', [HamaController::class, 'update']);
        // Data Gejala Hama
        Route::post('/gejalahama', [GejalahamaController::class, 'store']);
        Route::post('/gejalahama-delete', [GejalahamaController::class, 'delete']);
        Route::post('/gejalahama-update', [GejalahamaController::class, 'update']);
        // Data Basis Hama
        Route::post('/basishama', [BasishamaController::class, 'store']);
        Route::post('/basishama-delete', [BasishamaController::class, 'delete']);
        Route::post('/basishama-update', [BasishamaController::class, 'update']);
        // Data Kondisi Hama
        Route::post('/kondisihama', [KondisihamaController::class, 'store']);
        Route::post('/kondisihama-delete', [KondisihamaController::class, 'delete']);
        Route::post('/kondisihama-update', [KondisihamaController::class, 'update']);

        //Master Penyakit
        Route::get('/data-penyakit', [MasterpenyakitController::class, 'index']);
        // Data Penyakit
        Route::post('/penyakit', [PenyakitController::class, 'store']);
        Route::post('/penyakit-delete', [PenyakitController::class, 'delete']);
        Route::post('/penyakit-update', [PenyakitController::class, 'update']);
        // Data Gejala Penyakit
        Route::post('/gejalapenyakit', [GejalapenyakitController::class, 'store']);
        Route::post('/gejalapenyakit-delete', [GejalapenyakitController::class, 'delete']);
        Route::post('/gejalapenyakit-update', [GejalapenyakitController::class, 'update']);
        // Data Basis Penyakit
        Route::post('/basispenyakit', [BasishamaController::class, 'store']);
        Route::post('/basispenyakit-delete', [BasispenyakitController::class, 'delete']);
        Route::post('/basispenyakit-update', [BasispenyakitController::class, 'update']);

        Route::get('/settings', [SettingsController::class, 'index']);
        Route::get('/profile', [ProfileController::class, 'index']);  
    });

    Route::post('/logout', [LoginController::class, 'logout']);
});
