<?php

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

Route::get('/', function () {
    return view('welcome');
});

// Route::get('siswa','SiswaController@index');
// Route::post('siswa','SiswaController@create');
// Route::put('siswa/{$id}','SiswaController@update');
// Route::delete('siswa/{$id}','SiswaController@delete');

Route::get('/kontak','ControllerKontak@index');
Route::get('/kontak/{id}','ControllerKontak@show');
Route::post('/kontak/store','ControllerKontak@store');
Route::post('/kontak/update/{id}','ControllerKontak@update');
Route::post('/kontak/delete/{id}','ControllerKontak@destroy');