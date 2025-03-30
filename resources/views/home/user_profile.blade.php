@extends('layouts.home')
@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp

@section('title', 'User Profile '.$setting->title)
@include('home._header')

@section ('content')



<div class="container">
        <div class="row">
            <div class="col-md-2">
                @include('home.user_panel')
            </div>
            <div class="col-md-10">
                @include('profile.show')
            </div>
        </div>
</div>
@endsection

