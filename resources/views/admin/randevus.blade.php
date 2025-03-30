@extends('layouts.admin')

@section('title','Randevular Listesi')

@section('content')
    <div class="content">
        <div class="container-fluid">
            <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title ">Randevular</h4>

                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead class=" text-primary">
                                    <tr>

                                        <th scope="col">Id</th>
                                        <th scope="col">User</th>
                                        <th scope="col">Phone</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">Program</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Time</th>
                                        <th scope="col">Nabız</th>
                                        <th scope="col">Kilo</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Actions</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($datalist as $rs)
                                        <tr>
                                            <td>
                                                {{$rs->id}}

                                            </td>
                                            <td>
                                                <a href="{{route('admin_user_show',['id'=>$rs->user->id])}}" onclick="return !window.open(this.href,'','top=50 left=100 width=1100,height=700')">{{$rs->user->name}}</a>

                                            </td>

                                            <td>
                                                {{$rs->user->phone}}
                                            </td>

                                            <td>
                                                {{$rs->user->address}}
                                            </td>
                                            <td>
                                                {{$rs->product->title}}
                                            </td>
                                            <td>
                                                ₺ {{$rs->product->price}}
                                            </td>
                                            <td>
                                                {{$rs->date}}
                                            </td>
                                            <td>
                                                {{$rs->time}}
                                            </td>
                                            <td>
                                                {{$rs->nabiz}}
                                            </td>
                                            <td>
                                                {{$rs->kilo}}
                                            </td>
                                            <td>
                                                {{$rs->status}}
                                            </td>

                                            <td><a href="{{route('admin_randevu_edit',['id'=>$rs->id])}}" onclick="return !window.open(this.href,'','top=50 left=100 width=400,height=400')"><img src="{{asset('assets/admin/images')}}/edit.png" height="30"></a></td>


                                        </tr>

                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
@endsection
