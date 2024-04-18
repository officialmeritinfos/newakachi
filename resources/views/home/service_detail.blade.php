@extends('home.base')
@section('content')

    <section class="page-header" style="background-image: url({{asset('home/lassets/images/background/inner-banner-bg.png')}}");">
    <div class="container">
        <h2>{{$pageName}}</h2>
    </div><!-- /.container -->
    </section><!-- /.page-header -->


    <!-- End Service Details Area -->
    <section class="service-details-area ptb-100" style="margin-bottom: 5rem; margin-top: 5rem;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="service-details-wrap">
                        <div class="service-img">
                            <img src="{{asset('home/serv/'.$service->photo)}}" alt="Image">
                        </div>
                        <h3>{{$service->title}}</h3>
                        <p>
                            {!! str_replace('MYSITE',$siteName,$service->content) !!}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Service Details Area -->


@endsection
