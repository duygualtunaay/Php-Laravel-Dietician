@extends('layouts.home')

@section('title', 'Diyet Kategorileri '.$data->title)
@include('home._header')



@section('content')

    <div id="products" class="layout_padding product_section ">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="product_text"><strong><span class="den"></span>{{$data->title}}</strong></h1>
                </div>
            </div>
            <div class="product_section_2 images">
                <div class="row">
                    @foreach($datalist as $rs)
                        <div class="col-sm-4">
                            <div class="images"><img src="{{ asset("storage/$rs->image") }}" style="max-width: 100%; width: 100%;"></div>
                            <h2 class="den_text croissants"><a href="{{route('product',['id' => $rs->id,'slug' => $rs->slug])}}">{{$rs->title}}</a></h2>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection



