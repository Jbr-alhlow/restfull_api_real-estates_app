<?php

use Illuminate\Support\Facades\Route;
use app\User;
use Illuminate\Support\Facades\Mail;

use App\Mail\SendMailable;
use Illuminate\Http\Request;
use Illuminate\Contracts\Mail\Mailable;
use Illuminate\Support\Facades\DB;
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




Route::get('/', function (Request $request) {

    $admin = User::all()->where('warrant', 'admin')->pluck('remember_token')->toarray();
    $officer_tokken = User::all()->where('id', $request->user_id)->pluck('remember_token')->toarray();




    $SERVER_API_KEY = 'AAAAfgFCtGg:APA91bGSmKKqe47sRCk6-IhBAylb87RXCk0X0E2uQ5v_4VkOe53q96AFUnc1dZo53CZtPElWeZn_gRQWbvqlCbRwBwXQYmnLOyKNBHvKXKg9AoxWqGmTZS3LvG8OY4NLIw3SiBlxO4kP';

    $token_1 = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5NzJjZDdjZi0zMzljLTQ4OTQtODFiMy1hNWNkMTUwMzM5ZmUiLCJqdGkiOiI0MDQ4YzAzNjNlMzUwNDEzNjcwZjU5MTY2YzkzYzQ3NDVjZTI4NzE4NzExYTc2MjE0ZDg1NTZiODg4OGE5ZmQyOTNiYzU0NDZhZTdhOTY5OCIsImlhdCI6MTY2Mjc2MjA2MSwibmJmIjoxNjYyNzYyMDYxLCJleHAiOjE2OTQyOTgwNjEsInN1YiI6IjI1Iiwic2NvcGVzIjpbXX0.nSnI52c6gIeOZT8AU350ZPrV0tvJLq9Yv4Nywkp6xJxAlKyD_GJ8SvLPYuKiPebWNs0qOJNRJxGIuPcUDkt7fXM23FsHJ06LnFCpgaNiBfCp2mJLUshjm6wIfYZ6U-OTC7suV3P1yEel_Ma7er2RAkP7YJ0JTpOB1xWIBqE8PaNXPEE2ERBaO5u541WiY2p0SOPEfFG3k-POIBURywPnLDkGIYRsEzP3fq-aRkEISAwEjAtsQF3rdTjIr8IkX9qhE1JLyBxywHHVVKY6lzZfbaP7l_pXBqcFhzFuH-RH3Ph5ytxiUrPXg4EHJBCI4FtVekLgqPNd4a9ZsHmRnFaCnyZu7fmA6pDGmKfdCcNE2ZTR_OZeM2OQEY0OrE6cd7F5CWOoY2-usqHc6THKc9CV-f4dRuB3tDY2kbPCNBFA1wPJ7-W1qWeIX-TClOt97V6tapQ0EGIcc3paXH176_uzJabn25zsXAtQnBUMtmMX1rpqDPcsSipr7LRXtipw7GZY-Cl1qJjs8bkJeatshqxz95iDEXt2D-Ef5tZid_9BajbebyBun37nv_1KsRHJX6RHnN12VRkR2WSIsmtOla1bk6rg3SgiH_EXrWQFfWuaXsi-6mmalZ0Zr6XFaGKUzSzy2kJAJQHd8dFuVScFIegMt9QOK57iHMgPQvV8CL_kUUw';

    $data = [

        "registration_ids" => [
            $admin,$officer_tokken
        ],

        "notification" => [

            "title" => 'Welcome',

            "body" => 'Description',

            "sound"=> "default" // required for sound on ios

        ],

    ];

    $dataString = json_encode($data);

    $headers = [

        'Authorization: key=' . $SERVER_API_KEY,

        'Content-Type: application/json',

    ];

    $ch = curl_init();

    curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');

    curl_setopt($ch, CURLOPT_POST, true);

    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);

    $response = curl_exec($ch);

    dd($response);

});
