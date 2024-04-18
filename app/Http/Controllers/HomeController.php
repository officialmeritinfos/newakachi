<?php

namespace App\Http\Controllers;

use App\Models\Deposit;
use App\Models\GeneralSetting;
use App\Models\Investment;
use App\Models\Package;
use App\Models\Service;
use App\Models\Withdrawal;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Home Page',
            'packages'  => Package::where('status',1)->get(),
            'deposits'=>Investment::where('status','1')->orWhere('status','4')->orderBy('id','desc')->limit(10)->get(),
            'withdrawals'=>Withdrawal::where('status','!=',3)->orderBy('id','desc')->limit(10)->get(),
            'services'=>Service::where('status',1)->get()
        ];

        return view('home.home',$dataView);
    }

    public function about()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Company Overview',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.about',$dataView);
    }
    public function mission()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Mission',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.mission',$dataView);
    }
    public function values()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Value',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.values',$dataView);
    }
    public function plans()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Packages',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.plans',$dataView);
    }
    public function terms()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Terms and Conditions',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.terms',$dataView);
    }
    public function privacy()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Privacy Policy',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.privacy',$dataView);
    }
    public function faqs()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Frequently Asked Questions',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.faq',$dataView);
    }
    public function services()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Services',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.service',$dataView);
    }
    public function estate()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Real Estates',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.estates',$dataView);
    }
    public function contact()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Contact us',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.contact',$dataView);
    }
    public function buyBtc()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Where to Buy Bitcoin',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.buy_btc',$dataView);
    }
    //service detail
    public function serviceDetail($id)
    {
        $web = GeneralSetting::where('id',1)->first();

        $service = Service::where('id',$id)->firstOrFail();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => $service->title,
            'service'  => $service
        ];

        return view('home.service_detail',$dataView);
    }
    //security
    public function security()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Security Information',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.security',$dataView);
    }

    public function realEstate()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Real Estate',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.estates',$dataView);
    }
    public function nft()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'NFT',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.nft',$dataView);
    }
    public function gold()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Gold',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.gold',$dataView);
    }
    public function cryptocurrency()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Cryptocurrency Investment Package',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.cryptocurrency',$dataView);
    }
    public function affiliate()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Affiliate',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.affiliate',$dataView);
    }
    public function retirement()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'RETIREMENT AND PENSION FUND INVESTMENTS PACKAGE',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.retirement',$dataView);
    }
    public function forex()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Foreign Exchange',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.forex',$dataView);
    }
    public function stocks()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Stocks & ETFs',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.stocks',$dataView);
    }
    public function agriculture()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Agriculture',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.agriculture',$dataView);
    }
    public function career()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Career',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.career',$dataView);
    }
    public function atm()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Bitcoin ATM',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.atm',$dataView);
    }
    public function tesla()
    {
        $web = GeneralSetting::where('id',1)->first();

        $dataView = [
            'siteName'  => $web->name,
            'web'       => $web,
            'pageName'  => 'Tesla',
            'packages'  => Package::where('status',1)->get()
        ];

        return view('home.tesla',$dataView);
    }
}

