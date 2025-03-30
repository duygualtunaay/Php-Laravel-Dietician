<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .vertical-menu {
            width: 200px;
        }

        .vertical-menu a {
            background-color: #404050;
            color: #ffcfcf;
            display: block;
            padding: 12px;
            text-decoration: none;
        }

        .vertical-menu a:hover {
            background-color: #020101;
        }

        .vertical-menu a.active {
            background-color: #a2a2a2;
            color: white;
        }
    </style>
</head>
<h4>PROFİL DETAYLARI</h4>

<div class="vertical-menu">
    <a href="#" class="active">{{Auth::user()->name}}</a>
    <a href="{{route('userprofile')}}">PROFİLİM</a>
    <a href="{{route('user_randevu')}}">RANDEVULARIM</a>
    <a href="{{route('user_review')}}">MESAJLARIM</a>
    <a href="{{route('logout')}}">ÇIKIŞ</a>
</div>
