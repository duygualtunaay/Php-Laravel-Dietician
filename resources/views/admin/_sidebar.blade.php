<div class="sidebar" data-color="purple" data-background-color="white" data-image="{{asset('assets')}}/admin/img/sidebar-1.jpg">
    <!--
      Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

      Tip 2: you can also add an image using data-image tag
  -->
    <div class="logo">
        @if(Auth::user()->profile_photo_path)
            <img src="{{Storage::url(Auth::user()->profile_photo_path)}}" height="75" style="border-radius: 10px">
        @endif
        <p style="color:black">{{Auth::user()->name}}</p>
    </div>
    <div class="sidebar-wrapper">
        <ul class="nav">
            <li class="nav-item active  ">
                <a class="nav-link" href="{{route('admin_home')}}">
                    <i class="material-icons">dashboard</i>
                    <p>Ana Sayfa</p>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="{{route('admin_category')}}">

                    <p>Kategoriler</p>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="{{route('admin_products')}}">

                    <p>Ürünler</p>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="{{route('admin_message')}}">

                    <p>Mesajlar</p>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="{{route('admin_faq')}}">

                    <p>FAQ</p>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="{{route('admin_review')}}">

                    <p>Yorumlar</p>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="{{route('admin_randevus')}}">

                    <p>Randevular</p>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="{{route('admin_users')}}">

                    <p>Kullanıcılar</p>
                </a>
            </li>

        </ul>
    </div>
</div>
