<?php

use App\Http\Controllers\Admin\DoctorsController;
use App\Http\Controllers\Admin\HamaController;
use App\Http\Controllers\Admin\PatientsController;
use App\Http\Controllers\DiseaseController;
use App\Http\Controllers\SymptomController;
use App\Http\Controllers\RuleController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::get('/doctors-data', [DoctorsController::class, 'data'])->name('doctors.data');

Route::get('/patients-data', [PatientsController::class, 'data'])->name('patients.data');

Route::get('/hama-data', [HamaController::class, 'data'])->name('hama.data');

Route::get('/penyakit-data', [PenyakitController::class, 'data'])->name('penyakit.data');

Route::get('/disease-data', [DiseaseController::class, 'data'])->name('disease.data');

Route::get('/symptom-data', [SymptomController::class, 'data'])->name('symptom.data');

Route::get('/rules-data', [RuleController::class, 'data'])->name('rules.data');

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
