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

Route::get('/', 'TestController@create')->name('test.create');

Route::post('/', 'TestController@store')->name('test.store');

Route::get('/result', 'ResultController@index')->name('result.index');
