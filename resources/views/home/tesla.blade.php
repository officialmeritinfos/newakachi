@extends('home.base')
@section('content')
    <section class="page-header" style="background-image: url({{asset('home/lassets/images/background/inner-banner-bg.png')}}");">
    <div class="container">
        <h2>{{$pageName}}</h2>
    </div><!-- /.container -->
    </section><!-- /.page-header -->
    <section class="blog-one blog-one__home blog-one__grid">
        <div class="container">
            <h1 class="text-center">SUPER TESLA</h1>
            <p>
                a tesla supercharger is a 480-volt direct current fast-charging technology built by american vehicle manufacturer tesla, inc. for electric cars. the supercharger network was introduced on september 24, 2012, with six supercharger stations.[1] as of february 18, 2021, tesla operates over 30,000 superchargers in over 2,564 stations worldwide[2] (an average of 9 chargers per station). there are 1,101 stations in north america, 592 in europe, and 498 in the asia/pacific region.[3] supercharger stalls have a connector to supply electrical power at maximums of 72 kw, 150 kw or 250 kw.[4]
            </p>
            <img src="{{asset('home/img/tesla1.jpg')}}" style="width: 100%;">
            <p>
                the tesla model x costs about €15.29 to fully charge, which comes out to about 4.5 cents per mile. it will cost around €7.65 to charge a tesla model 3. depending on the variant, this is between 3 and 4 cents per mile. if you own a tesla model s, you can expect to pay about 3.7 per mile.
            </p>
            <img src="{{asset('home/img/tesla2.jpg')}}" style="width: 100%;">
            <div>
                <h3 class="text-center">
                    COST
                </h3>
                <p>
                    the cost for tesla supercharger is between €100,000 and €175,000 depending on the station, and a lot of those come from the permanent modifications needed at the site to support the supercharger tesla superchargers are gaining momentum as many people are now using tesla cars for their day to day activities and {{$siteName}} is here to walk you down the steps of benefiting from this particular type of investment, the purchase of tesla superchargers, installation and maintenance will be overseen by {{$siteName}} investment company
                </p>
            </div>

        </div>
    </section><!-- /.blog-one -->

@endsection
