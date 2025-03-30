@extends('layouts.home')
@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp

@section('title', 'Hakkımızda '.$setting->title)
@include('home._header')


@section ('content')
    <div id="about" class="layout_padding about_section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div><img src="{{ asset('assets')}}/images/cupcake-img.png" style="max-width: 100%;"></div>
                </div>
                <div class="col-md-6">
                    <h1 class="about_text"><strong>About <span class="color"></span></strong></h1>
                    <p class="about_taital">{!! $setting->aboutus !!}</p>

                </div>
            </div>
        </div>
    </div>
@endsection

