@extends('layouts.home')
@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp

@section('title', 'İletişim '.$setting->title)
@include('home._header')

@section ('content')
    <div class="layout_padding gallery_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="gallery_main">
                        <h1 class="gallery_taital"><strong><span class="our_text">Get in</span>Touch</strong></h1>
                    </div>
                </div>
            </div>
            <div class="touch_main">
                <div class="row">
                    <div class="col-md-6">
                        <div class="input_main">
                            <div class="container">
                                @include('home.message')
                                <form action="{{route('sendmessage')}}" method="post" class="main_form">
                                    @csrf
                                    <div class="form-group">
                                        <input type="text" class="email-bt" placeholder="YOUR NAME" id="name" name="name">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="email-bt" placeholder="EMAIL" id="email" name="email">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="email-bt" placeholder="PHONE NUMBER" id="phone" name="phone">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="email-bt" placeholder="SUBJECT" id="subject" name="subject">
                                    </div>
                                    <div class="form-group">
                                        <textarea class="massage-bt" placeholder="MASSAGE" rows="5" id="message" name="message"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="main_bt">SEND</button>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6">
                        <div class="images">
                            <img src="{{ asset('assets')}}/images/bread-img.png" style="max-width: 100%;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="map_section">
        <div class="row">
            <div class="col-sm-12">

                {!! $setting->contact !!}
            </div>

        </div>
    </div>

@endsection

