<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;
use App\Todo;
use App\User;

use Illuminate\Support\Facades\Auth;

class TodoController extends Controller

{
/*    public function index()
    {
 		$list = Todo::with('user')->get();
		return view('todo.index', compact('list'));
    }
*/public function all(Request $request)
{
    $todo=todo::all();

    return response()->json([


        'success' => 'yes',
        'todo' => $todo
    ], 200);
}





/* index */
    public function index(Request $request)
    {

        $users = User::all();
        $officer_id = Todo::select('officer_id')->get()->toArray();

        $officer=Product::wherein('id',$officer_id)->get();
        $list = Todo::with(['user','product','officer'])->toArray();


        if(!is_null($request->status))
        {

            if($request->status != -1)
            {
                $list = $list->where('status', $request->status);

            }

        }

        if($request->user)
            if(!in_array(0, $request->user))
                $list = $list->whereIn('user_id', $request->user);

        if($request->description)
            $list = $list->where('description', 'like', '%'.$request->description.'%');


        if($request->name)
            $list = $list->where('name', 'like', '%'.$request->name.'%');

/*        dd($list->toSql());*/
        $list = $list->orderby('user_id', 'desc')->orderby('created_at', 'desc');

        $list = $list->get();

       /*  return view('todo.index', compact('list', 'users')); */
       return response()->json([


     'data'=>$list,
       ]




    );
    }

/* show */
    public function show($id, Request $request)
    {

        $item = Todo::with(['user', 'comments'])->find($id);



        if($item)
        {
/*            if(Auth::user()->id != $item->user_id)
                return redirect('/mytasks');*/

            return response()->json([
                'item' => $item,

            ], 200);
        }
        else
        {
            return response()->json([
              'no data'

            ], 200);
        }
    }
/* delete */
    public function delete($id)
    {
        $item = Todo::find($id);

        if($item)
        {
            Todo::destroy($id);
            return response()->json([
               'item hase been deleted'

            ], 200);
        }
        else
        {
            return response()->json([
                'item cant be delete'

             ]);
        }
    }

    public function edit($id)
    {
        $users_list = User::all();

        $item = Todo::find($id);

        if($item)
        {
            return view('todo.edit', compact("item", 'users_list'));
        }
        else
        {
            return redirect('/todo/index');
        }
    }

    public function update($id, Request $request)
    {
        $item = Todo::find($id);

        if($item)
        {
            $request->validate([
                'name' => 'required|min:6',
                'description' => 'required|min:20',
            ]);

            $item->name = $request->name;
            $item->user_id = $request->user_id;
            $item->description = $request->description;

            $item->save();
            return redirect('/todo/index');


        }
        else
        {
            return redirect('/todo/index');
        }

    }

    public function add()
    {
        $users = User::all();
    	return view('todo.add', compact('users'));
    }
/* store */
    public function store(Request $request)
    {

        $R= Auth::id();
        $request->validate([
            'name' => 'required|min:6',
            'description' => 'required|min:5',
        ]);

        $item = new Todo();
        $item->name = $request->name;
        $item->user_id = $R;
        $item->products_id = $request->products_id;
        $item->officer_id = $request->officer_id;
        $item->status = 0;
        $item->description = $request->description;
        $item->save();

        return response()->json([

            'data' => $item->toArray(),




         ]);



    }

    public function officer1(Request $request)
    {



        $user_id =Auth::id();
        $user=auth::user();



        $list=Todo::where('officer_id',$user_id)->get();
        $warrant=Auth::user()->warrant;

        $list = Todo::with('user')->where('officer_id', '=', Auth::user()->id)->get()->toArray();


if($warrant=='officer')
        return response()->json([


         'list'=>$list,



         ]);

         else

         return response()->json([


            'you dont have warrant to see this !!!'



         ]);





        }


    public function mytasks()
    {
        $list = Todo::with('user')->where('user_id', '=', Auth::user()->id)->get()->toArray();
        return response()->json([


         'list'=>$list,



         ]);
    }


/*    public function ddd()
    {
        $user = User::first();
        $user->password = bcrypt('123123');
        $user->save();
        dd('done');
    }*/
}
