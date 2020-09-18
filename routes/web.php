<?php

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

Route::get('/', function () {   
    return view('welcome');
});

Route::get('/contacts', 'ContactController@index');
Route::get('contacts/view/{contact}', 'ContactController@view')->name('contacts.view');
Route::get('contacts/history/{id}', 'ContactController@history');
Route::get('contacts/restore/{id}', 'ContactController@restore');
Route::get('/contacts/deleted', 'ContactController@deleted');


Route::resource('contacts', 'ContactController')->middleware('auth');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
