<?php

namespace App\Http\Controllers;

use App\Http\Middleware\Authenticate;
use App\Models\Category;
use App\Models\Faq;
use App\Models\Image;
use App\Models\Message;
use App\Models\Product;
use App\Models\Review;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    //
    public static function getsetting()
    {
        return Setting::first();
    }

    public static function categoryList()
    {
        return Category::where('parent_id','=',0)->with('children')->get();
    }

    public function faq(){
        $setting=Setting::first();
        $datalist=Faq::all()->sortBy('position');
        return view('home.faq',['datalist'=>$datalist,'setting'=>$setting]);
    }
    public function index(){
        $setting=Setting::first();
        $slider=Product::select('id','title','image','slug','price','category_id')->get();
        $daily=Product::select('id','title','image','slug','price')->limit(4)->inRandomOrder()->get();
        $last=Product::select('id','title','image','slug','price')->limit(4)->orderByDesc('id')->get();
        $picked=Product::select('id','title','image','slug','price')->limit(4)->inRandomOrder()->get();
        $data=[
            'setting'=>$setting,
            'daily'=>$daily,
            'last'=>$last,
            'picked'=>$picked,
            'slider'=>$slider,
            'page'=>'home'

        ];
        return view('home.index',$data);
    }
    public function product($id,$slug){$last=Product::select('id','title','image','slug','price')->limit(4)->orderByDesc('id')->get();
        $setting=Setting::first();
        $data=Product::find($id);
        $datalist=Image::where('product_id',$id)->get();
        $reviews=Review::where('product_id',$id)->get();
        return view('home.product_detail',['setting'=>$setting,'data'=>$data,'datalist'=>$datalist,'reviews'=>$reviews]);

    }
    public function categoryproducts($id,$slug){
        $datalist=Product::where('category_id',$id)->get();
        $data=Category::find($id);

        return view('home.category_products',['data'=>$data,'datalist'=>$datalist]);

    }


    public function aboutus(){
        return view('home.about');
    }
    public function contact(){
        $setting=Setting::first();
        return view('home.contact',['setting'=>$setting,'page'=>'home']);
    }
    public function sendreview(Request $request,$id)
    {
        $data = new Review;

        $data->user_id = Auth::id();
        $product = Product::find($id);
        $data->product_id=$id;
        $data->subject = $request->input('subject');
        $data->review = $request->input('review');
        $data->IP = $_SERVER['REMOTE_ADDR'];




        $data->save();

        return redirect()->route('product',['id'=>$product->id,'slug'=>$product->slug])->with('success','Mesajınız kaydedilmiştir');
    }


    public function references(){
        $setting=Setting::first();
        return view('home.references',['setting'=>$setting,'page'=>'home']);
    }
    public function sendmessage(Request $request)
    {
        $data = new Message();

        $data->name = $request->input('name');
        $data->email = $request->input('email');
        $data->phone = $request->input('phone');
        $data->subject = $request->input('subject');
        $data->message = $request->input('message');


        $data->save();

        return redirect()->route('contact')->with('success','Mesajınız kaydedilmiştir');
    }


    public function login(){
        return view('admin.login');
    }
    public function logincheck(Request $request)
    {
        if($request->isMethod('post'))
        {
            $credentials = $request->only('email', 'password');

            if (Auth::attempt($credentials)) {
                $request->session()->regenerate();

                return redirect()->intended('admin');
            }

            return back()->withErrors([
                'email' => 'The provided credentials do not match our records.',
            ]);
        }
        else
        {
            return view('admin.login');
        }
    }
    public function logout(Request $request){
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/');
    }
}
