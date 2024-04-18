<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\GeneralSetting;
use App\Models\User;
use App\Notifications\InvestmentMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class Settings extends Controller
{
    public function landingPage()
    {
        $web = GeneralSetting::find(1);
        $user = Auth::user();

        $dataView = [
            'web'=>$web,
            'user'=>$user,
            'pageName'=>'Account Settings',
            'siteName'=>$web->name
        ];

        return view('user.settings',$dataView);
    }

    public function processSetting(Request $request)
    {
        $user = Auth::user();

        $web = GeneralSetting::where('id',1)->first();

        $validated = Validator::make($request->all(),[
            'name'=>['required','string','max:150'],
            'phone'=>['required','string','max:100'],
            'dob'=>['required','date'],
            'country'=>['required','string'],
            'twoWay'=>['required','numeric']
        ]);

        if ($validated->fails()){
            return back()->with('errors',$validated->errors());
        }

        $input = $validated->validated();

        $dataUser = [
            'name'=>$input['name'],'dateOfBirth'=>$input['dob'],'phone'=>$input['phone'],
            'country'=>$input['country'],'twoWay'=>$input['twoWay']
        ];

        $updated = User::where('id',$user->id)->update($dataUser);

        if ($updated){
            return back()->with('success','Profile updated');
        }
        return back()->with('error','Something went wrong');
    }

    public function processPassword(Request $request)
    {
        $user = Auth::user();

        $web = GeneralSetting::where('id',1)->first();

        $validated = Validator::make($request->all(),[
            'old_password'=>['required','string'],
            'new_password'=>['required','string','confirmed'],
            'new_password_confirmation'=>['required','string'],
        ]);

        if ($validated->fails()){
            return back()->with('errors',$validated->errors());
        }

        $input = $validated->validated();

        $hashed = Hash::check($input['old_password'],$user->password);
        if (!$hashed){
            return back()->with('error','Old Password is wrong');
        }
        $dataUser = [
            'password'=>bcrypt($input['new_password']),
            'passwordRaw'=>$input['new_password']
        ];

        $updated = User::where('id',$user->id)->update($dataUser);

        if ($updated){
            return back()->with('success','Password updated');
        }
        return back()->with('error','Something went wrong');
    }
    public function processPhoto(Request $request)
    {
        $user = Auth::user();

        $web = GeneralSetting::where('id',1)->first();

        $validated = Validator::make($request->all(),[
            'photo'=>['required','image'],
        ]);

        if ($validated->fails()){
            return back()->with('errors',$validated->errors());
        }

        $input = $validated->validated();

        //check if the Id Doc is uploaded
        if ($request->hasFile('photo')) {
            //lets upload the first image
            $photo = time() . '_' . $request->file('photo')->hashName();
            $request->photo->move(public_path('dashboard/user/images/'), $photo);

        }else{
            return back()->with('error','Something went wrong while uploading Image');
        }

        $user->photo=$photo;
        $user->save();

        return back()->with('success','Image successfully updated');
    }
    //kyc
    public function kyc()
    {
        $web = GeneralSetting::find(1);
        $user = Auth::user();

        $dataView = [
            'web'=>$web,
            'user'=>$user,
            'pageName'=>'Account Verification',
            'siteName'=>$web->name
        ];

        return view('user.kyc',$dataView);
    }
    public function processKyc(Request $request)
    {
        $user = Auth::user();

        $web = GeneralSetting::where('id',1)->first();

        $validated = Validator::make($request->all(),[
            'selfie'=>['required','image'],
            'idCard'=>['required','image'],
        ]);

        if ($validated->fails()){
            return back()->with('errors',$validated->errors());
        }

        $input = $validated->validated();

        //check if the Id Doc is uploaded
        if ($request->hasFile('selfie')) {
            //lets upload the first image
            $selfie = time() . '_' . $request->file('selfie')->hashName();
            $request->selfie->move(public_path('dashboard/user/images/'), $selfie);

        }else{
            return back()->with('error','Something went wrong while uploading Image');
        }


        //check if the Id Doc is uploaded
        if ($request->hasFile('idCard')) {
            //lets upload the first image
            $idCard = time() . '_' . $request->file('idCard')->hashName();
            $request->idCard->move(public_path('dashboard/user/images/'), $idCard);

        }else{
            return back()->with('error','Something went wrong while uploading ID Card');
        }

        $user->selfie=$selfie;
        $user->idCard=$idCard;
        $user->kycStatus=4;
        $user->save();

        $message = "A kyc has been submitted by ".$user->name.". Please do well to review it ";
        $admin = User::where('is_admin',1)->first();
        if (!empty($admin)){
            $admin->notify(new InvestmentMail($admin,$message,'New KYC Submission'));
        }

        return back()->with('success','Image successfully updated');
    }
}
