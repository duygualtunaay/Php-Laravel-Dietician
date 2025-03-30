<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Randevu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class RandevuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datalist=Randevu::where('user_id',Auth::id())->get();
        return view('home.user_randevu',['datalist'=>$datalist]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,$id)
    {
        $data = new Randevu;

        $data->date = $request->input('date');
        $data->time = $request->input('time');
        $data->nabiz = $request->input('nabiz');
        $data->kilo = $request->input('kilo');
        $data->user_id = Auth::id();
        $product = Product::find($id);
        $data->product_id=$id;

        $data->IP = $_SERVER['REMOTE_ADDR'];

        $data->save();

        return redirect()->route('product',['id'=>$product->id,'slug'=>$product->slug])->with('success','Randevunuz Oluşturuldu!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data=Randevu::find($id);

        $data->program=$data->program;
        return view('home.user_program_show',['data'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
