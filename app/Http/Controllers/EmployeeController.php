<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Todo;
use App\Comment;
use Auth;
use APP\User;

class EmployeeController extends Controller
{
    public function add_comment($id)
    {
    	$todo = Todo::find($id);

    	if($todo)
    	{
            return response()->json([
                'add'
            ]);

    	}
    	else
    	{
            return response()->json([
                'not add'
            ]);
    	}

    }



        public function store_comment($id, Request $request)
        {
            //dd($request->all());


            $request->validate([
                'comment' => 'required',

            ]);
        	$comment = new Comment();
        	$comment->user_id = Auth::user()->id;
        	$comment->todo_id = $id;
        	$comment->comments = $request->comment;
        	$comment->save();

            return response()->json([
                'comment_add successfuly'
            ]);

        }


        public function change_status($id)
        {
            $todo = Todo::find($id);

            $status_list = ["0" => "In progress", "1" => "done", "2" => "failed", "3" => "blocked",];

            if($todo)
            {
                return response()->json($status_list);

            }
            else
            {
                return redirect('/mytasks');
            }

        }

        function update_status($id, Request $request)
        {

            $todo = Todo::find($id);

            if($todo)
            {
                $todo->status = $request->status;
                $todo->save();
                return redirect('/mytasks');

            }
            else
            {
                return redirect('/mytasks');
            }


        }


        public function change_status2($id)
        {
            $todo = Todo::find($id);

            $status_list = ["0" => "In progress", "1" => "done", "2" => "failed", "3" => "blocked"];

            if($todo)
            {
                return view('employee.change_status2', compact('todo', 'status_list'));

            }
            else
            {
                return redirect('/mytasks');
            }

        }



        function update_status2(Request $request)
        {

            $todo = Todo::find($request->id);

            if($todo)
            {
                $todo->status = $request->status;
                $todo->save();
                return response()->json('status_changed');

            }
            else
            {
                return response()->json('status_cant_change');
            }


        }

}
