<div class="layout_padding banner_section">
    <div class="container">
        <div id="main_slider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                @foreach($slider->take(4) as $rs)
                <div class="carousel-item @if($loop->first) active @endif">
                    <div class="row ">
                        <div class="col-md-6 taital">
                            <h1 class="taital">{{$rs->category->title}}<strong class="banner_taital">{{$rs->title}}</strong></h1>
                            <p class="lorem_text">{{$rs->price}}₺</p>
                        </div>
                        <div class="col-md-6">
                            <div class="banner-image"><img src="{{ asset("storage/$rs->image") }}" style="max-width: 100%;"></div>
                        </div>
                        <div class="banner_bt">
                            <button class="bt_main"><a href="{{route('product',['id' => $rs->id,'slug' => $rs->slug])}}">Satın Al</a></button>
                        </div>
                    </div>
                </div>
                @endforeach

            </div>
            <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"><i class="fa fa-angle-left"></i></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"><i class="fa fa-angle-right"></i></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

    </div>
</div>
</div>
</header>
