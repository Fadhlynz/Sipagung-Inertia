<?php

use App\Http\Controllers\Admin\BasishamaController;
use App\Http\Controllers\Admin\BasispenyakitController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\DoctorsController;
use App\Http\Controllers\Admin\GejalahamaController;
use App\Http\Controllers\Admin\GejalapenyakitController;
use App\Http\Controllers\Admin\HamaController;
use App\Http\Controllers\Admin\MasterhamaController;
use App\Http\Controllers\Admin\MasterpenyakitController;
use App\Http\Controllers\Admin\PatientsController;
use App\Http\Controllers\Admin\PenyakitController;
use App\Http\Controllers\Admin\ProfileController;
use App\Http\Controllers\Admin\SettingsController;
use App\Http\Controllers\DataController;
use App\Http\Controllers\DiseaseController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\SymptomController;
use App\Http\Controllers\RuleController;
use App\Http\Controllers\User\BerandaController;
use App\Http\Controllers\User\DiagnosaHamaController;
use App\Http\Controllers\User\DiagnosaPenyakitController;
use App\Http\Controllers\User\KeteranganController;
use App\Http\Controllers\User\RiwayatController;
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
Route::get('/diagnosa-hama', [DiagnosaHamaController::class, 'index']);
Route::get('/diagnosa-penyakit', [DiagnosaPenyakitController::class, 'index']);
Route::get('/riwayat', [RiwayatController::class, 'index']);
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
        Route::post('/gejalahama', [GejalahamaController::class, 'insert']);
        Route::post('/gejalahama-delete', [GejalahamaController::class, 'delete']);
        Route::post('/gejalahama-update', [GejalahamaController::class, 'update']);
        // Data Basis Hama
        Route::post('/basis-hama', [BasishamaController::class, 'insert']);
        Route::post('/basispenyakit-delete', [BasishamaController::class, 'delete']);
        Route::post('/basispenyakit-update', [BasishamaController::class, 'update']);

        //Master Penyakit
        Route::get('/data-penyakit', [MasterpenyakitController::class, 'index']);
        // Data Penyakit
        Route::post('/penyakit', [PenyakitController::class, 'store']);
        Route::post('/penyakit-delete', [PenyakitController::class, 'delete']);
        Route::post('/penyakit-update', [PenyakitController::class, 'update']);
        // Data Gejala Penyakit
        Route::post('/gejalapenyakit', [GejalapenyakitController::class, 'insert']);
        Route::post('/gejalapenyakit-delete', [GejalapenyakitController::class, 'delete']);
        Route::post('/gejalapenyakit-update', [GejalapenyakitController::class, 'update']);
        // Data Basis Penyakit
        Route::post('/basis-penyakit', [BasispenyakitController::class, 'insert']);
        Route::post('/basispenyakit-delete', [BasispenyakitController::class, 'delete']);
        Route::post('/basispenyakit-update', [BasispenyakitController::class, 'update']);

        Route::get('/doctors', [DoctorsController::class, 'index']);
        Route::post('/doctors', [DoctorsController::class, 'insert']);
        Route::post('/doctor-delete', [DoctorsController::class, 'delete']);
        Route::post('/doctor-update', [DoctorsController::class, 'update']);

        Route::get('/patients', [PatientsController::class, 'index']);
        Route::post('/patients', [PatientsController::class, 'insert']);
        Route::post('/patient-delete', [PatientsController::class, 'delete']);
        Route::post('/patient-update', [PatientsController::class, 'update']);

        Route::post('/disease', [DiseaseController::class, 'store']);
        Route::post('/disease-update', [DiseaseController::class, 'update']);
        Route::post('/disease-delete', [DiseaseController::class, 'delete']);
        
        Route::post('/symptom', [SymptomController::class, 'store']);
        Route::post('/symptom-update', [SymptomController::class, 'update']);
        Route::post('/symptom-delete', [SymptomController::class, 'delete']);

        Route::post('/rules', [RuleController::class, 'store']);
        Route::post('/rules-update', [RuleController::class, 'update']);
        Route::post('/rules-delete', [RuleController::class, 'delete']);

        Route::get('/data', [DataController::class, 'index']);
        Route::get('/settings', [SettingsController::class, 'index']);
        Route::get('/profile', [ProfileController::class, 'index']);  
    });

    Route::post('/logout', [LoginController::class, 'logout']);
});
