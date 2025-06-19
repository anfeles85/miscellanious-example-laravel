<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\ForgotPasswordController;
use Illuminate\Support\Facades\Auth;
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
    return view('auth.login');
});


Route::prefix('employee')->group(function(){
    Route::get('/index', [EmployeeController::class, 'index'])->name('employee.index');
    Route::get('/edit/{id}', [EmployeeController::class, 'edit'])->name('employee.edit');
    Route::delete('/destroy/{id}', [EmployeeController::class, 'destroy'])->name('employee.destroy');
});

Route::prefix('auth')->group(function(){
    Route::get('/index', [AuthController::class, 'index'])->name('auth.index');
    Route::post('/login', [AuthController::class, 'login'])->name('auth.login');
    Route::get('/register', [AuthController::class, 'create'])->name('auth.register');
    Route::post('/register', [AuthController::class, 'store'])->name('auth.store');
    Route::get('forget-password', [ForgotPasswordController::class, 'showForgetPasswordForm'])->name('auth.forget-password');
    Route::post('forget-password', [ForgotPasswordController::class, 'submitForgetPasswordForm'])->name('auth.forget-password-link');
    Route::get('reset-password/{token}', [ForgotPasswordController::class, 'showResetPasswordForm'])->name('reset.password.get');
    Route::post('reset-password', [ForgotPasswordController::class, 'submitResetPasswordForm'])->name('reset.password.post');
});

