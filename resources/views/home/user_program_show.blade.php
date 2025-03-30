<html>
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>@yield('title')</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets')}}/css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets')}}/css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="{{ asset('assets')}}/css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="{{ asset('assets')}}/images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="{{ asset('assets')}}/css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <!-- owl stylesheets -->
    <link rel="stylesheet" href="{{ asset('assets')}}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="{{ asset('assets')}}/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    @yield('css')
    @yield('headerjs')
</head>
<body>

<section class="content">
    <div class="card">
        <div class="card-body">

            <div class="panel panel-white">
                <div class="panel-heading clearfix">
                    <h3 class="breadcrumb-header">Diyet : {{$data->product->title}}</h3>
                </div>
                <div class="panel-body">
                    <div class="card-footer">
                        <table id="example" class="display table" style="width: 100%; cellspacing: 0;">
                            <thead>
                            <tr>

                                <th>Program</th>

                            </tr>
                            </thead>
                            <tbody>

                                <tr>

                                    <td>
                                        {!! $data->note !!}
                                    </td>

                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</div>

</body>
</html>
