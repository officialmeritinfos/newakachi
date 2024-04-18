@extends('home.base')
@section('content')

    <section class="page-header" style="background-image: url({{asset('home/lassets/images/background/inner-banner-bg.png')}}");">
    <div class="container">
        <h2>{{$pageName}}</h2>
    </div><!-- /.container -->
    </section><!-- /.page-header -->

    <section class="blog-one blog-one__home blog-one__grid">
        <div class="container ptb-100">
            <div class="container">
                <h2 class="">Value Proposition</h2>
            </div>
            <div class="container-fluid">
               {{$siteName}} has a compelling value proposition for investors seeking exposure to global private equity, private credit and infrastructure investments.
            </div>
            <div class="container">
                <h2 class="">Key elements of {{$siteName}}'s value proposition:</h2>
            </div>
            <div class="container-fluid">
                * Opportunity to access value creation outside the public markets through long-term private markets investments <br>
                * Highly experienced professional team with established, successful track record and extensive global network <br>
                * Lower fees than traditional private equity/infrastructure/private credit fund models – mitigating the “j-curve” effect and improving net returns to investors <br>
                * Market-leading, employee-controlled franchise backed by long-term commitments from leading institutional investors globally <br>
                * Comprehensive tax solution for cross border private markets investments
            </div>
            <div class="container">
                <h2 class="">Investment Philosophy and Approach</h2>
            </div>
            <div class="container-fluid">
                In a global economic climate characterized by heightened volatility and macro-economic uncertainty,{{$siteName}}’s disciplined private markets programs provide innovative solutions to investors seeking attractive, risk adjusted returns that are less correlated with the broader public markets, and offer the potential for enhanced long-term returns with lower volatility.  <br>

                Available through both pooled fund programs and customized investment mandates,{{$siteName}} believes that its focused private market portfolios offer the potential for higher returns and greater diversification. Private equity continues to offer incremental capital gains with less volatility, given both the range of private company return drivers and the downside protection resulting from professional hands-on management by experienced owners. Private credit offers consistent long-term attractive returns and current income in a growing asset class from a diversified portfolio of loans to private equity-backed companies. Infrastructure offers stable, inflation-protected long-term cash flows from the ownership of mature, conservatively positioned long-duration assets.  <br>

               {{$siteName}} believes that responsible corporate behaviour will have a positive influence on long-term financial performance and is committed to incorporating environmental, social and governance (ESG) factors into its investment processes at every level.
            </div>
            <div class="container">
                <h2 class="">Private Equity</h2>
            </div>
            <div class="container-fluid">
               {{$siteName}}’s global private equity program capitalizes on the opportunity for disciplined, selective investment in private equity transactions globally, taking advantage of both the renewed emphasis on traditional private equity value creation in mid-market companies and the accelerating growth and business-building opportunities for private companies across the “innovation economy”. <br>

               {{$siteName}}’s private equity investment approach is characterized by: <br>

                Active secondary and co-investments that augment and build upon a well-established primary fund investment program –{{$siteName}}’s focused portfolio of top-tier mid-market and growth-oriented primary fund investments is complemented by active secondary and co-investment strategies that accelerate the investment pace and enhance returns <br>
                Innovative, cost-effective structures designed to mitigate the j-curve and maximize net returns –{{$siteName}}’s global private equity funds minimize ‘fee on fee’ concerns by charging on invested (not committed) capital, deducting the underlying manager’s future fees and carried interest when pricing secondary investment opportunities, and typically co-investing on a no fee/carried interest basis <br>
                An integrated team, proactive sourcing, a differentiated global platform and active portfolio construction –{{$siteName}}’s distinctive investment model leverages an integrated global team to generate attractive opportunities across each element of its private equity strategy. {{$siteName}}’s well-established fund manager relationships not only generate attractive returns from their individual sectors of focus and expertise, but also create informational advantages and preferred deal flow for{{$siteName}}’s secondary and co-investment transactions
            </div>
        </div>
    </section><!-- /.blog-one -->




@endsection
