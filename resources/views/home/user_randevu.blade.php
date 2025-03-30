@extends('layouts.home')
@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp

@section('title', 'Randevularım '.$setting->title)
@include('home._header')
@section ('content')
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            .vertical-menu {
                width: 200px;
            }

            .vertical-menu a {
                background-color: #eee;
                color: black;
                display: block;
                padding: 12px;
                text-decoration: none;
            }

            .vertical-menu a:hover {
                background-color: #ccc;
            }

            .vertical-menu a.active {
                background-color:#00b0ff;
                color: white;
            }
        </style>
        <style>
            #customers {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #customers td, #customers th {
                border: 1px solid #050303;
                padding: 8px;
            }

            #customers tr:nth-child(even){background-color: #050303;}

            #customers tr:hover {background-color: #595555;}

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #070a1f;
                color: #ffffff;
            }
        </style>
    </head>


    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                @include('home.user_panel')
            </div>
            <div class="col-sm-9">
                <h1 style="font-size: 30px; text-align: center;">RANDEVULARIM</h1>

                <table id="customers">
                    <tr>

                        <th>Diyet</th>
                        <th>Fiyat</th>
                        <th>Fotoğraf</th>
                        <th>Kilo</th>
                        <th>Nabız</th>
                        <th>Tarih</th>
                        <th>Saat</th>
                        <th>Program</th>
                        <th>Durum</th>

                    </tr>
                    @foreach($datalist as $rs)
                        <tr>

                            <td><a href="{{route('product',['id'=>$rs->product->id,'slug'=>$rs->product->slug])}}" target="_blank">{{$rs->product->title}}</a></td>
                            <td>{{$rs->product->price}}₺</td>
                            <td>
                                @if ($rs->product->image)
                                    <img src="{{Storage::url($rs->product->image)}}" height="30" alt="">
                                @endif
                            </td>
                            <td>{{$rs->kilo}}</td>
                            <td>{{$rs->nabiz}}</td>
                            <td>{{$rs->date}}</td>
                            <td>{{$rs->time}}</td>
                            <td><a href="{{route('user_randevu_show', ['id' =>$rs->id])}}" onclick="return !window.open(this.href, '','top=50, left=100, width=1100, height=700')">
                                    <img src="{{asset('assets')}}/admin/images/gallery.png" height="25"></a></td>
                            <td>{{$rs->status}}</td>

                        </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>

@endsection

