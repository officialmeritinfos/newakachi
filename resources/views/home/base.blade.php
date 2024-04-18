
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title> {{$siteName}} | {{$pageName}}</title>
    <link href="{{asset('home/imported-css.css')}}" rel="stylesheet" />
    <link href="{{asset('home/css/plugins.css')}}" rel="stylesheet">
    <link href="{{asset('home/css/style.css')}}" rel="stylesheet">


    <link href="https://fonts.googleapis.com/css2?family=Lora:wght@400;500&amp;family=Mulish:wght@200;400&amp;family=Raleway:wght@200;400;500&amp;display=swap" rel="stylesheet">

    <style>
        p,
        span,
        div {
            /* font-family: 'Lora', serif !important; */
            /* font-family: 'Mulish', sans-serif !important; */
            font-family: 'Raleway', sans-serif !important;
        }

        a,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            font-family: 'Lora', serif !important;
        }

    </style>

    <link rel="stylesheet" href={{asset('home/general60306030.css')}}?id=3333>
    <link rel="stylesheet" href="{{asset('home/css/fontawesome.css')}}">

    <script src="{{asset('home/js/jquery.js')}}"></script>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
    .inspiro-slider {
        height_: 100vh !important;
    }

</style>
@stack('css')
<body>
@inject('injected','App\Defaults\Custom')

<div class="body-inner">


    <!-- <div style="height: 40px"></div> -->
    <header id="header" data-transparent="true" data-fullwidth="true" class="dark submenu-light">
        <div class="header-inner">
            <div class="container">

                <style>
                    #logo .logo-dark img {
                        width: 150px;
                        object-fit: contain;
                    }

                    #logo .logo-default img {
                        width: 150px;
                    }


                    @media(min-width: 1024px) {
                        .hhwwjwjku72jk {
                            /* position: relative;
    top: 20px; */
                        }
                    }

                </style>


                <div id="logo">
                    <a href="{{url('/')}}">
                        <span class="logo-default"><img src="{{asset('home/images/'.$web->logo)}}" /></span>
                        <span class="logo-dark"><img src="{{asset('home/images/'.$web->logo)}}" /></span>
                    </a>
                </div>


                <div id="mainMenu-trigger">
                    <a class="lines-button x"><span class="lines"></span></a>
                </div>

                <div id="mainMenu">
                    <div class="container hhwwjwjku72jk">
                        <nav>
                            <ul>
                                <li><a href="{{url('/')}}">Home</a></li>


                                <li class="dropdown"><a href="{{url('about')}}">Our Company</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="{{url('about')}}">About Us</a></li>
                                        <li><a href="{{url('terms')}}">Legal and Terms</a></li>
                                        <li><a href="#">Company Pdf</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown"><a href="#">Investment Packages</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="{{url('cryptocurrency')}}">Cryptocurrency</a></li>
                                        <li><a href="{{url('retirement')}}">Pension Funds</a></li>
{{--                                        <li><a href="{{url('forex')}}">FOREX (PAMM/MAM)</a></li>--}}
                                    </ul>
                                </li>

                                <li><a href="{{url('affiliate')}}">Affiliate</a></li>

                                <li class="dropdown"><a href="{{route('login')}}">My Account</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="{{route('register')}}">Open Account</a></li>
                                        <li><a href="{{route('login')}}">Acount Login</a></li>
                                    </ul>
                                </li>


                                <style type="text/css">
                                    .ekemm3kmem {
                                        width: unset;

                                        background-color: #eeeeeeee !important;
                                        border-color: #eeeeeeee !important;
                                        color: #333 !important;
                                    }

                                </style>



                            </ul>
                        </nav>
                    </div>
                </div>

            </div>
        </div>
    </header>


    @yield('content')


<footer id="footer" class="theme-bg">
    <div class="footer-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">

                    <div class="widget  widget-contact-us" style="background-image: url('{{asset('home/images/world-map-dark.png')}}'); background-position: 50% 20px; background-repeat: no-repeat">
                        <h4 style="color: #fff !important;">Our Contacts</h4>
                        <ul class="list-icon">
                            <li style="color: #fff !important;"><i class="fa fa-map-marker"></i>{!! $web->address !!}</li>
                            <li style="color: #fff !important;"><i class="far fa-envelope"></i> <a href="mailto:{{$web->email}}">{{$web->email}}</a> </li>

                        </ul>
                    </div>

                </div>

                <div class="col-lg-3  col-lg-2 col-md-6">

                    <div class="widget">
                        <h4 style="color: #fff !important;">Quick Links</h4>
                        <ul class="list" style="padding-left: 0 !important; color: #fff !important;">
                            <li style="color: #fff !important;"><a href="{{url('/')}}">Home</a></li>
                            <li style="color: #fff !important;"><a href="{{url('about')}}">About Us</a></li>
                            <li style="color: #fff !important;"><a href="{{url('affiliate')}}">Affiliate</a></li>
                            <li style="color: #fff !important;"><a href="{{url('terms')}}">Terms and Conditions</a></li>
                            <li style="color: #fff !important;"><a href="{{route('register')}}">Create Account</a></li>
                            <li style="color: #fff !important;"><a href="{{route('login')}}">Account Login</a></li>
                        </ul>
                    </div>

                </div>

                <div class="col-lg-5 col-lg-2 col-md-12">
                    <p><a href="{{url('/')}}"><img style="height: 100px; width: 100%;" src="{{asset('home/images/'.$web->logo)}}" alt="logo"></a></p>
                    <p style="color: #fff !important;"> {{$siteName}} is dedicated to helping investors around the world reach
                        their desired investment goals and broaden their financial horizons.
                        <br><br>
                        We seek to provide world-class investment expertise across a breadth of markets and
                        asset classes. Coupled with a wide
                        range of investment approaches, we transform new investment ideas into practical
                        investment products designed to deliver real value for money to investors.
                    </p>
                </div>

            </div>
        </div>
    </div>

    <div class="row" style="color:white; margin-left:30px; margin-right:30px; margin-top:10px;">
        <div class="col-md-4 col-sm-4 footer-about footer-col ">
            <div class="sec-title">
                <h4 class="widget-title" style="color:#fff;">Quick Links To Buy Bitcoin In EUROPE</h4>
            </div>

            <ul class="footer-nav" style="padding-left:20px; color:white;">
                <li><a href="https://coinmama.com/">Coin Mama</a></li>
                <li><a href="https://coinfxinvestment.com/en/https/paybis">PayBis</a></li>
                <li><a href="https://coinbase.com/">Coin Base</a></li>
                <li><a href="https://luno.com/">Luno</a></li>
                <li><a href="https://xcoin.com/">Xcoin</a></li>
                <li><a href="https://kraken.com/">kraken</a></li>
                <li><a href="https://binance.com/">Binance</a></li>
                <li><a href="https://bit2me.com/">Bit2me</a></li>
            </ul>
        </div>
        <div class="col-md-4 col-sm-4 footer-about footer-col">
            <div class="sec-title">
                <h4 class="widget-title" style="color:#fff;">Quick Links To Buy Bitcoin In AMERICA</h4>
            </div>

            <ul class="footer-nav" style="padding-left:20px;">
                <li><a href="https://coinmama.com/">Coin Mama</a></li>
                <li><a href="https://coinfxinvestment.com/en/https/paybis">PayBis</a></li>
                <li><a href="https://coinbase.com/">Coin Base</a></li>
                <li><a href="https://luno.com/">Luno</a></li>
                <li><a href="https://xcoin.com/">Xcoin</a></li>
                <li><a href="https://localbitcoins.com/">Local Bitcoins</a></li>
                <li><a href="https://cex.io/">cex</a></li>
            </ul>
        </div>
        <div class="col-md-4 col-sm-4 footer-about footer-col ">
            <div class="sec-title">
                <h4 class="widget-title" style="color:#fff;">Quick Links To Buy Bitcoin In OTHERS</h4>
            </div>

            <ul class="footer-nav" style="padding-left:20px;">
                <li><a href="https://indodax.com/">Indodax</a></li>
                <li><a href="https://coinfxinvestment.com/en/https/coinhako">Coinhako</a></li>
                <li><a href="https://wazirx.com/">Wazirx</a></li>
                <li><a href="https://zebpay.com/">Zebpay</a></li>
                <li><a href="https://ramzinex.com/">Ramzinex</a></li>
                <li><a href="https://nobitex.ir/">Nobitex</a></li>
                <li><a href="https://wallex.ir/">Wallex</a></li>
            </ul>
        </div>

    </div>

    <div class="copyright-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">

                    <div class="social-icons social-icons">

                    </div>

                </div>
                <div class="col-lg-6 text-right">
                    <div class="copyright-text">© {{date('Y')}} {{$siteName}}. All Rights Reserved. </div>
                </div>
            </div>
        </div>
    </div>
</footer>
</div>
<a id="scrollTop"><i class="icon-chevron-up"></i><i class="icon-chevron-up"></i></a>
<script src="{{asset('home/js/plugins.js')}}"></script>
<script src="{{asset('home/plugins/particles/particles.js')}}"></script>
<script src="{{asset('home/plugins/particles/particles-dots.js')}}"></script>

<script src="{{asset('home/js/functions.js')}}"></script>

<script src="{{asset('home/imported-js.js')}}"></script>

<script src="{{asset('home/inc-js/js/vendors/indonez.min.js')}}"></script>
<script src="{{asset('home/inc-js/js/vendors/uikit.min.js')}}"></script>
<script src="{{asset('home/inc-js/js/config-theme.js')}}"></script>
<!-- Google language start -->
<style>

    #google_translate_element {
        z-index: 9999999;
        position: fixed;
        bottom: 25px;
        left: 15px;
    }

    .goog-te-gadget {
        font-family: Roboto, "Open Sans", sans-serif !important;
        text-transform: uppercase;
    }
    .goog-te-gadget-simple
    {
        padding: 0px !important;
        line-height: 1.428571429;
        color: white;
        vertical-align: middle;
        background-color: black;
        border: 1px solid #a5a5a599;
        border-radius: 4px;
        float: right;
        margin-top: -4px;
        z-index: 999999;
    }
    .goog-te-banner-frame.skiptranslate
    {
        display: none !important;
        color: white;
    }
    .goog-te-gadget-icon
    {
        background: none !important;
        display: none;
        color: white;
    }
    .goog-te-gadget-simple .goog-te-menu-value
    {
        font-size: 12px;
        color: white;
        font-family: 'Open Sans' , sans-serif;
    }
</style>
<div id="google_translate_element"></div>
<script type="text/javascript">
    window.onload = function googleTranslateElementInit() {
        new google.translate.TranslateElement({ pageLanguage: 'en' }, 'google_translate_element');
    }
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<!-- start popup massage -->
<div class="notifier" style="display: none;">
    <div class="txt" style="color:black;">While you are waiting,someone from <b></b> just traded with <a href="javascript:void(0);" onclick="javascript:void(0);"></a></div>
</div>
<style>
    .notifier{
        border-radius: 7px;
        position: fixed;
        z-index: 90;
        bottom: 80px;
        right: 50px;
        background: #fff;
        padding: 15px 40px;
        box-shadow: 0px 5px 13px 0px rgba(0,0,0,.3);
    }
    .notifier a {
        font-weight: 700;
        display: block;
        color:#0080FF;
    }
    .notifier a, .notifier a:active {
        transition: all .2s ease;
        color:#0080FF;
    }
</style>
<script data-cfasync="false" src="#"></script><script type="text/javascript">
    var listCountries = ['Germany', 'Spain', 'Russia', 'Italy',
        'Italy',  'United States', 'Egypt',
        'United Kingdom', "United States","England","Germany","Germany","United States","Switzerland",
        "Austria","Austria","Austria","Australia","Australia","Australia","Russia","Russia",
        "United States","United Kingdom","Spain","Spain","India","England","Italy","Ukraine"
    ];
    var listPlans = ['$500','$5000','$1,000','$1000','$550','$3000','$690', '$360',
        '$700', '$600',"$500","$700","$1,000","$1289","$5000","$7000","$10000"];
    interval = Math.floor(Math.random() * (40000 - 8000 + 1) + 8000);
    var run = setInterval(request, interval);

    function request() {
        clearInterval(run);
        interval = Math.floor(Math.random() * (40000 - 8000 + 1) + 8000);
        var country = listCountries[Math.floor(Math.random() * listCountries.length)];
        var plan = listPlans[Math.floor(Math.random() * listPlans.length)];
        var msg = 'While you are still contemplating ,an investor from <b>' + country + '</b> ' + 'just earned' + plan + ' .</a>';
        $(".notifier .txt").(msg);
        $(".notifier").stop(true).fadeIn(300);
        window.setTimeout(function() {
            $(".notifier").stop(true).fadeOut(300);
        }, 6000);
        run = setInterval(request, interval);
    }
</script>
<!-- end popup massage -->
@stack('js')
<!-- Smartsupp Live Chat script -->
<script type="text/javascript">
    var _smartsupp = _smartsupp || {};
    _smartsupp.key = '05a3b481c603560ca5a6583af866077ecb161211';
    window.smartsupp||(function(d) {
        var s,c,o=smartsupp=function(){ o._.push(arguments)};o._=[];
        s=d.getElementsByTagName('script')[0];c=d.createElement('script');
        c.type='text/javascript';c.charset='utf-8';c.async=true;
        c.src='https://www.smartsuppchat.com/loader.js?';s.parentNode.insertBefore(c,s);
    })(document);
</script>
<noscript> Powered by <a href=“https://www.smartsupp.com” target=“_blank”>Smartsupp</a></noscript>
</body>
</html>
