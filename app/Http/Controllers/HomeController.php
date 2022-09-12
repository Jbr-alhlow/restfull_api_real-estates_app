<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Mail;
use App\User;
use App\Mail\SendMailable;
use Illuminate\Http\Request;
use Illuminate\Contracts\Mail\Mailable;
use Illuminate\Support\Facades\DB;


class HomeController extends Controller
{
    /**


     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function mail(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email',
        ]);

        $user = User::all()->where('email', $request->email)->first();
        $data = mt_rand(100000, 999999);
        if ($user) {
            $y = '1';

            $user->CODE = $data;
            $user->save();
            $name = $data;
            Mail::to($request->email)->send(new SendMailable($name));
        } else {
            $y = '5';
        }







        // Make sure you've got the Page model





        return response()->json('your code have been sent');
    }




    public function reset(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email',

        ]);
        $user = User::all()->where('email', $request->email)->first();
        if ($request->code == $user->CODE) {
            $user->password = bcrypt($request->password);
            $user->save();
            $y = 1;
        } else {
            $y = 0;
        }


        return response()->json([

            $y
        ]);
    }


    public function test1()
    {

    }
}
