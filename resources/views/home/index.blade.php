@extends('layouts.home')

@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp

@section('title', 'Ana Sayfa | '.$setting->title)
@section('description')
    {{$setting->description}}
@endsection

@section ('keywords',$setting->keywords)

@include('home._header')

@include('home._slider')

@section ('content')
    <!-- about start-->

    <!-- product start-->
    <div id="products" class="layout_padding product_section ">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="product_text"><strong><span class="den">Yeni</span>Diyetler</strong></h1>
                </div>
            </div>
            <div class="product_section_2 images">
                <div class="row">
                    @foreach($last as $rs)
                    <div class="col-sm-4">
                        <div class="images"><img src="{{ asset("storage/$rs->image") }}" style="max-width: 100%; width: 100%;"></div>
                        <h2 class="den_text croissants"><a href="{{route('product',['id' => $rs->id,'slug' => $rs->slug])}}">{{$rs->title}}</a></h2>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <!-- product end-->
    <!-- Gallery start-->
@auth
    <div id="gallery" class="layout_padding2 gallery_section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="gallery_main">
                        <h1 class="gallery_taital"><strong><span class="our_text">Hoş</span>Geldiniz!</strong></h1>
                    </div>
                </div>
                <div class="col-sm-12 gallery_maain">
                    <div class="row">

                        <div class="col-sm-3 padding_0">
                            <div class="gallery_blog">

                                <div style="padding-left: 600px;">
                                    <a href="{{route('userprofile')}}" class="btn btn-primary">{{Auth::user()->name}}</a>
                                    <a href="{{route('logout')}}" class="btn btn-primary">Çıkış</a>
                                </div>


                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@else
        <div id="gallery" class="layout_padding2 gallery_section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="gallery_main">
                            <h1 class="gallery_taital"><strong><span class="our_text">GirişYap</span>&Kaydol</strong></h1>
                        </div>
                    </div>
                    <div class="col-sm-12 gallery_maain">
                        <div class="row">

                            <div class="col-sm-3 padding_0">
                                <div class="gallery_blog">

                                    <div style="padding-left: 600px;">
                                        <a href="/login" class="btn btn-primary">GİRİŞ YAP</a>
                                        <a href="/register" class="btn btn-primary">KAYDOL</a>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
@endauth
    <!-- end Gallery-->
    <!-- Touch start-->

    <!-- Touch end-->
    <div id="gallery" class="layout_padding2 gallery_section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="gallery_main">
                        <h1 class="gallery_taital"><strong><span class="our_text">Size Özel</span> Diyetler</strong></h1>
                    </div>
                </div>
                <div class="col-sm-12 gallery_maain">
                    <div class="row">
                        @foreach($picked as $rs)
                            <div class="col-sm-3 padding_0">
                                <div class="gallery_blog">
                                    <img class="img-responive" src="{{ asset("storage/$rs->image") }}">
                                    <div class="overlay">
                                        <h2><a href="{{route('product',['id' => $rs->id,'slug' => $rs->slug])}}">{{$rs->title}}</a></h2>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

