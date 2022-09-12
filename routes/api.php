<?php

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




/*  */
Route::post('/send', 'HomeController@mail')->middleware('throttle:5,1');
Route::post('/reset', 'HomeController@reset')->middleware('throttle:5,1');
Route::get('/product', 'ProductController@all');
/* new */



Route::post('/filter', 'ProductController@filter1');


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
    Route::post('login', 'PassportController@login');
    Route::post('register', 'PassportController@register');
Route::middleware('auth:api')->group(function () {
    Route::get('user', 'PassportController@details');

    Route::resource('products', 'ProductController');
    Route::post('products/update/{id}', 'ProductController@update');

    Route::post('/filter1', 'ProductController@filter2');
    Route::post('/todo/store', 'TodoController@store');
    Route::put('/productuu/{id}', 'ProductController@update1');



    /* new */
    Route::get('/officer11', 'TodoController@officer1');
    /* new */
    Route::get('/todoall', 'TodoController@all');



    /* user crud */

    Route::get('/useroperation/{id}', 'PassportController@show');
    Route::post('/deleteuser/{id}', 'PassportController@destroy');
    Route::get('/useroperation', 'PassportController@index');

    Route::get('/add_comment/{id}', 'EmployeeController@add_comment');
    Route::post('/store_comment/{id}', 'EmployeeController@store_comment');
    Route::get('/mytask', 'TodoController@mytasks');


    Route::get('/todo', 'TodoController@index');
    Route::get('/todo/{id}', 'TodoController@show');
    route::post('/todo/status','TodoController@update_status2');
    /* password
OLN3JiWUDw5hGxPdqZg2 */
});

/* Route::resource('uesr_operation', 'User_crudcontroller'); */
Route::get('/test', 'HomeController@test1');
