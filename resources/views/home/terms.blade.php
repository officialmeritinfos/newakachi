@extends('home.base')
@section('content')

    <div id="slider" class="inspiro-slider dots-creative" data-height-xs="360">

        <div class="slide kenburns" style="background-image:url('{{asset('home/site-images/51c1f80dfa55dcd562709024eae52281.png')}}');">
            <div class="bg-overlay"></div>
            <div class="container">
                <div class="slide-captions text-center text-light">

                    <span class="strong">{{$siteName}}</span>
                    <h1>{{$pageName}}</h1>

                </div>
            </div>
        </div>

    </div>


    <section>
        <div class="container">
            <div class="heading-text heading-line text-center">
                <h4>LEGAL / TERMS AND CONDITIONS</h4>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <p class="text-center">{{$siteName}}</p>

                    <div class="text-container">

                        <p>
                            In using this website you are deemed to have read and agreed to the following terms and conditions:
                            The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and any or all Agreements: "Client", “You” and “Your” refers to you, the person accessing this website and accepting the Company’s terms and conditions. "The Company", “Ourselves”, “We” and "Us", refers to our Company. “Party”, “Parties”, or “Us”, refers to both the Client and ourselves, or either the Client or ourselves.
                        </p>



                        <p>
                            <b>Privacy Statement</b><br/>

                            {{$siteName}} knows that you care how information about you is used and shared. Hence we make a strong commitment to protect and respect the privacy principles regarding the information that you provide. By using our website, you agree to the terms of this Privacy Statement. Like many websites we use "cookies", and we obtain certain types of information when your web browser accesses our website. All the data given by a member to {{$siteName}} will be only privately used and not disclosed to any third parties.
                        </p>


                        <p>
                            <b>Confidentiality</b><br>
                            We are committed to protecting your privacy. Authorized employees within the company on a need to know basis only use any information collected from individual customers. We constantly review our systems and data to ensure the best possible service to our customers. We will not sell, share, or rent your personal information to any third party or use your e-mail address for unsolicited mail. Any emails sent by this Company will only be in connection with the provision of agreed services and products.
                        </p>


                        <p>
                            <b>Guidance & Professional advice</b><br/>
                            Crypto Trading is a volatile market and carry a high degree of risk factors. Before deciding to invest in crypto one has to carefully consider their financial status and level of experience. Here in Finova Phoenix our team of certified and experienced professional traders provide you with consistent good trading results using sophisticated Ai and indicators.  We guarantee a steady and stable trading and investment experience as your investment with us is capital insured against any loss arising from trading
                        </p>

                        <p>
                            <b>Use of site</b><br/>
                            SPAM violators will be permanently removed from the site with immediate effect. {{$siteName}} reserves the right to accept or decline any member for membership without explanation
                        </p>

                        <p>
                            <b>Responsibilities & General Terms</b>
                            {{$siteName}} is not available to the general public and is opened only to the members of the site. You agree to be of legal age in your country to join this site and in all the cases your minimum age must be 18 years. The use of this site is restricted to our members. Every deposit is considered to be a private transaction between {{$siteName}} and its member.
                        </p>

                    </div>


                </div>
            </div>
        </div>
    </section>

@endsection
