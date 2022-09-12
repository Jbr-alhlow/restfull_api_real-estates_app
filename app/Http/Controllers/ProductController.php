<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

use Illuminate\Support\Facades\Validator;
class ProductController extends Controller
{
    public function filter1(Request $request)
    {

        $news_list = Product::all();



        if (!is_null($request->type)) {

            $news_list = Product::where('type', $request->type)->get()->toArray();



            return response()->json([
                'success' => true,
                'data' => $news_list,
            ]);
        } else if (!is_null($request->price)) {
            $news = Product::where('price', '>', $request->min_price);
            $news_list = $news->where('price', '<', $request->max_price)->get();
            return response()->json([
                'success' => true,
                'data' => $news_list->toArray()
            ]);
        } else if (!is_null($request->location)) {

            $news_list = Product::where('location', $request->location)->get();
            return response()->json([
                'success' => true,
                'data' => $news_list->toArray(),
            ]);
        } else if (!is_null($request->state)) {

            $news_list = Product::where('state', $request->state)->get();
            return response()->json([
                'success' => true,
                'data' => $news_list->toArray(),
            ]);

        } else {
            return response()->json([
                'success' => true,
                'data' => $news_list->toArray(),
            ]);
        }
    }

    public function all()
    {
        $products = product::all();

        return response()->json([
            'success' => true,
            'data' => $products->toArray()
        ]);
    }
    public function index()
    {
        $products = auth()->user()->products;

        return response()->json([
            'success' => true,
            'data' => $products->toArray()
        ]);
    }

    public function show($id)
    {
        $product = auth()->user()->products()->find($id);

        if (!$product) {
            return response()->json([
                'success' => false,
                'message' => 'Product with id ' . $id . ' not found'
            ], 400);
        }

        return response()->json([
            'success' => true,
            'data' => $product->toArray()
        ], 400);
    }
    public function update1($id,Request $request)
    {


     /*    $Product = Product::find($id)->update([ Product::find($id)->name=$request->name,
        Product::find($id)->price=$request->price,
        Product::find($id)->type=$request->type,
        Product::find($id)->details=$request->details,
        Product::find($id)->user_id = Auth()->user()->id,

        ] ); */
        $Product = Product::find($id)->update([ "name"=>$request->name,
        "price"=>$request->price,
        "type"=>$request->type,
        "details"=>$request->details,
        "user_id"=> Auth()->user()->id,

        ] );



        return response()->json(["Product" => Product::find($id)]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'price' => 'required|integer',
            'location' => 'required',
            'details' => 'required',
            'type' => 'required',
        ]);

        $product = new Product();
        $product->name = $request->name;
        /* villa -house-dipartment */
        $product->details = $request->details;
        $product->location = $request->location;
        $product->state = 'not_published';
        /* other state
        1-published ->all user can see it
        2-inprogress -> when some one want to buy it just admin can see it
        3-Sold -> just admin can see it
        */


        $product->type = $request->type;
        /* type (شهري-سنوي-يومي)للبيع او  للاجار*/
        $product->room = $request->room;
        $product->price = $request->price;
        $product->user_id = Auth()->user()->id;
        if ($request->hasfile('img1')) {
            $file = $request->file("img1");
            $extention = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extention;
            $file->move('img1', $filename);
            $product->img1 = $filename;
        }
        if ($request->hasfile('img2')) {
            $file = $request->file("img2");
            $extention = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extention;
            $file->move('img2', $filename);
            $product->img2 = $filename;
        }
        if ($request->hasfile('img3')) {
            $file = $request->file("img3");
            $extention = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extention;
            $file->move('img3', $filename);
            $product->img3 = $filename;
        }
        if ($request->hasfile('img4')) {
            $file = $request->file("img4");
            $extention = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extention;
            $file->move('img4', $filename);
            $product->img4 = $filename;
        }
        if ($request->hasfile('img5')) {
            $file = $request->file("img5");
            $extention = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extention;
            $file->move('img5', $filename);
            $product->img5 = $filename;
        }
        $product->save();



        if (auth()->user()->products()->save($product))
            return response()->json([
                'success' => true,
                'data' => $product->toArray()
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Product could not be added'
            ], 500);
    }

    public function update(Request $request, $id)
    {
        $product = auth()->user()->products()->find($id);

        if (!$product) {
            return response()->json([
                'success' => false,
                'message' => 'Product with id ' . $id . ' not found'
            ], 400);
        }

        /*     $updated = $product->fill($request->all())->save();

        if ($updated)
            return response()->json([
                'success' => true
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Product could not be updated'
            ], 500); */
        $this->validate($request, [
            'name' => 'required',
            'price' => 'required|integer',
            'location' => 'required',
            'details' => 'required',
            'type' => 'required',
        ]);


        $product->name = $request->name;
        $product->details = $request->details;
        $product->location = $request->location;

        $product->type = $request->type;
        $product->price = $request->price;
        $product->user_id = Auth()->user()->id;
        if ($request->hasfile('img1')) {
            $file = $request->file("img1");
            $extention = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extention;
            $file->move('img1', $filename);
            $product->img1 = $filename;
        }
        if ($request->hasfile('img2')) {
            $file = $request->file("img2");
            $extention = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extention;
            $file->move('img2', $filename);
            $product->img2 = $filename;
        }
        if ($request->hasfile('img3')) {
            $file = $request->file("img3");
            $extention = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extention;
            $file->move('img3', $filename);
            $product->img3 = $filename;
        }
        if ($request->hasfile('img4')) {
            $file = $request->file("img4");
            $extention = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extention;
            $file->move('img4', $filename);
            $product->img4 = $filename;
        }
        if ($request->hasfile('img5')) {
            $file = $request->file("img5");
            $extention = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extention;
            $file->move('img5', $filename);
            $product->img5 = $filename;
        }
        $product->save();
        return response()->json([
            'success' => true
        ]);
    }

    public function destroy($id)
    {
        $product = auth()->user()->products()->find($id);

        if (!$product) {
            return response()->json([
                'success' => false,
                'message' => 'Product with id ' . $id . ' not found'
            ], 400);
        }

        if ($product->delete()) {
            return response()->json([
                'success' => true
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Product could not be deleted'
            ], 500);
        }
    }
}
