@extends('home.base')
@section('content')

    <section class="page-header" style="background-image: url({{asset('home/lassets/images/background/inner-banner-bg.png')}}");">
        <div class="container">
            <h2>{{$pageName}}</h2>
        </div><!-- /.container -->
    </section><!-- /.page-header -->

    <section class="blog-one blog-one__home blog-one__grid">
        <div class="container ptb-100">
            <h2 class="container">Mission Statement</h2>
            <div class="container-fluid text-center">
                We are a global private markets investor with strong trading roots and a long, well-established track record.
                <hr>
                We are committed to building long-term relationships with our investors, investment partners and colleagues based on trust, openness, respect and the highest standards of integrity and professionalism.
            </div>
            <br><br>
            <div class="container">
                <h4 >We will be the private markets partner of choice for our investors by:</h4>
            </div>
            <div class="container-fluid">
                * Generating superior, long-term investment returns <br>
                * Ensuring that our interests are aligned with theirs <br>
                * Working collaboratively and openly to exceed expectations through best-in-class private markets solutions, investor reporting and client service
            </div>
            <br><br>
            <div class="container">
                <h4 >We will be a preferred investment partner by:</h4>
            </div>
            <div class="container-fluid">
                * Employing a professional, fact-based investment approach grounded in a deep understanding of private markets <br>
                * Being a trusted, collaborative, long-term partner <br>
                * Providing a global investment perspective informed by our long and successful history of private markets investing
            </div>
            <br><br>
            <div class="container">
                <h4 >We will attract, develop and retain exceptional professionals by:</h4>
            </div>
            <div class="container-fluid">
                * Providing and reinforcing a one-team culture that is both supportive and challenging <br>
                * Ensuring that our interactions are founded on honesty and mutual respect <br>
                * Expecting, recognizing and celebrating excellence in everything we do <br>
                * Supporting the professional, community and personal development efforts of every team member
            </div>
        </div>
    </section><!-- /.blog-one -->




@endsection
