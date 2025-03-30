<header>
    <div class="layout_padding banner_section_start">
        <!-- header inner -->
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 col logo_section">
                        <div class="full">
                            <div class="center-desk">
                                <div class="logo"><a href="/">ANA SAYFA</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    @php
                        $parentCategories=\App\Http\Controllers\HomeController::categoryList();
                    @endphp
                    <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                        <div class="menu-area">
                            <div class="limit-box">
                                <nav class="main-menu">
                                    <ul class="menu-area-main">

                                        @foreach($parentCategories as $rs)
                                        <li><a href="{{route('categoryproducts',['id'=>$rs->id,'slug'=>$rs->slug])}}">{{$rs->title}}</a></li>
                                        @endforeach
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end header inner -->
        <!-- banner start-->
