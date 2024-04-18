@extends('home.base')
@section('content')
    <section class="page-header" style="background-image: url({{asset('home/lassets/images/background/inner-banner-bg.png')}});">
        <div class="container">
            <h2>Contact Us</h2>
        </div><!-- /.container -->
    </section><!-- /.page-header -->

    <section class="contact-one" id="contact">
        <img src="{{asset('home/lassets/images/shapes/contact-shape-1.png')}}" alt="" class="contact-one__shape-1">
        <img src="{{asset('home/lassets/images/shapes/contact-shape-2.png')}}" alt="" class="contact-one__shape-2">
        <img src="{{asset('home/lassets/images/shapes/contact-shape-3.png')}}" alt="" class="contact-one__shape-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="contact-one__content">
                        <div class="contact-one__images">
                            <img src="{{asset('home/lassets/images/resources/contact-1.jpg')}}" class="wow fadeInUp" data-wow-duration="1500ms" alt="">
                            <img src="{{asset('home/lassets/images/resources/contact-2.jpg')}}" class="wow fadeInUp" data-wow-duration="1500ms" alt="">
                        </div><!-- /.contact-one__images -->
                        <div class="contact-one__infos">
                            <div class="contact-one__infos-single">
                                <div class="contact-one__infos-icon">
                                    <i class="zimed-icon-placeholder"></i>
                                </div><!-- /.contact-one__infos-icon -->
                                <div class="contact-one__infos-content">
                                    <h3>Address</h3>
                                    <p>{!! $web->address !!} </p>
                                </div><!-- /.contact-one__infos-content -->
                            </div><!-- /.contact-one__infos-single -->
                            <div class="contact-one__infos-single">
                                <div class="contact-one__infos-icon">
                                    <i class="zimed-icon-message"></i>
                                </div><!-- /.contact-one__infos-icon -->
                                <div class="contact-one__infos-content">
                                    <h3>Email</h3>
                                    <p><a href="mailto:{{$web->email}}">
                                            {{$web->email}}
                                        </a></p>
                                </div><!-- /.contact-one__infos-content -->
                            </div><!-- /.contact-one__infos-single -->
                            @if(!empty($web->phone))
                                <div class="contact-one__infos-single">
                                    <div class="contact-one__infos-icon">
                                        <i class="zimed-icon-phone-call"></i>
                                    </div><!-- /.contact-one__infos-icon -->
                                    <div class="contact-one__infos-content">
                                        <h3>Phone</h3>
                                        <p><a href="tel:{{$web->phone}}">{{$web->phone}}</a></p>
                                    </div><!-- /.contact-one__infos-content -->
                                </div><!-- /.contact-one__infos-single -->
                            @endif
                        </div><!-- /.contact-one__infos -->
                    </div><!-- /.contact-one__content -->
                </div><!-- /.col-lg-6 -->

            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.contact-one -->


@endsection
