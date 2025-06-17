<?php

use App\Http\Controllers\EmployeeController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('employee')->group(function(){
    Route::get('/index', [EmployeeController::class, 'index'])->name('employee.index');
    Route::get('/edit/{id}', [EmployeeController::class, 'edit'])->name('employee.edit');
    Route::delete('/destroy/{id}', [EmployeeController::class, 'destroy'])->name('employee.destroy');
    /*Route::post('/register', [AuthController::class, 'store'])->name('auth.store'); */
});

