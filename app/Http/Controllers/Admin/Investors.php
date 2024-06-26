<?php

namespace App\Http\Controllers\Admin;

use App\Defaults\Regular;
use App\Http\Controllers\Controller;
use App\Jobs\SendInvestmentNotification;
use App\Models\Coin;
use App\Models\Deposit;
use App\Models\GeneralSetting;
use App\Models\Mail;
use App\Models\Package;
use App\Models\User;
use App\Notifications\InvestmentMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class Investors extends Controller
{
    use Regular;
    public function landingPage()
    {
        $web = GeneralSetting::find(1);
        $user = Auth::user();

        $dataView =[
            'siteName' => $web->name,
            'pageName' => 'Investors',
            'user'     =>  $user,
            'web'=>$web,
            'investors'=>User::where('status',1)->get()
        ];

        return view('admin.investors',$dataView);
    }

    public function inactive()
    {
        $web = GeneralSetting::find(1);
        $user = Auth::user();

        $dataView =[
            'siteName' => $web->name,
            'pageName' => 'Investors',
            'user'     =>  $user,
            'web'=>$web,
            'investors'=>User::where('status','!=',1)->get()
        ];

        return view('admin.investors',$dataView);
    }

    public function details($id)
    {
        $web = GeneralSetting::find(1);
        $user = Auth::user();

        $dataView =[
            'siteName' => $web->name,
            'pageName' => 'Investor Details',
            'user'     =>  $user,
            'web'=>$web,
            'investor'=>User::where('id',$id)->first(),
            'mails'=>Mail::where('user',$id)->orWhere('user',null)->orderBy('id','desc')->paginate()
        ];

        return view('admin.investor_detail',$dataView);
    }

    public function activateTwoWay($id)
    {
        $data =[
            'twoWay'=>1
        ];
        User::where('id',$id)->update($data);

        return back()->with('success','Successful');
    }
    public function deactivateTwoWay($id)
    {
        $data =[
            'twoWay'=>2
        ];
        User::where('id',$id)->update($data);

        return back()->with('success','Successful');
    }
    public function activateLoan($id)
    {
        $data =[
            'canCompound'=>1
        ];
        User::where('id',$id)->update($data);

        return back()->with('success','Successful');
    }
    public function deactivateLoan($id)
    {
        $data =[
            'canCompound'=>2
        ];
        User::where('id',$id)->update($data);

        return back()->with('success','Successful');
    }
    public function verifyEmail($id)
    {
        $data =[
            'emailVerified'=>1
        ];
        User::where('id',$id)->update($data);

        return back()->with('success','Successful');
    }
    public function unVerifyEmail($id)
    {
        $data =[
            'emailVerified'=>2
        ];
        User::where('id',$id)->update($data);

        return back()->with('success','Successful');
    }
    public function activateUser($id)
    {
        $data =[
            'status'=>1
        ];
        User::where('id',$id)->update($data);

        return back()->with('success','Successful');
    }
    public function deactivateUser($id)
    {
        $data =[
            'status'=>2
        ];
        User::where('id',$id)->update($data);

        return redirect('admin/investors') ->with('success','Successful');
    }

    public function addFund(Request $request)
    {
        $web = GeneralSetting::where('id',1)->first();
        $user = Auth::user();
        $validator = Validator::make($request->input(),[
            'id'=>['required','numeric'],
            'amount'=>['required','numeric'],
        ]);

        if ($validator->fails()){
            return back()->with('errors',$validator->errors());
        }
        $input = $validator->validated();

        $investor = User::where('id',$input['id'])->first();

        $data = [
            'balance'=>$investor->balance+$input['amount']
        ];
        $coin = Coin::where('status',1)->first();

        Deposit::create([
            'user'=>$investor->id,'reference' => $this->generateId('deposits','reference'),
            'amount'=>$input['amount'],'asset'=>$coin->asset,'details'=>$coin->address,'status'=>1
        ]);

        $update = User::where('id',$input['id'])->update($data);
        if ($update){
            //send mail to investor
            $userMessage = "
                Your Account balance has been credited with $<b>" . $input['amount'] . " .
            ";
            //SendInvestmentNotification::dispatch($investor, $userMessage, 'Balance Topup');
            $investor->notify(new InvestmentMail($investor, $userMessage, 'Balance Topup'));
        }
        return back()->with('success','Balance added');
    }
    public function addProfit(Request $request)
    {
        $web = GeneralSetting::where('id',1)->first();
        $user = Auth::user();
        $validator = Validator::make($request->input(),[
            'id'=>['required','numeric'],
            'amount'=>['required','numeric'],
        ]);

        if ($validator->fails()){
            return back()->with('errors',$validator->errors());
        }
        $input = $validator->validated();

        $investor = User::where('id',$input['id'])->first();

        $data = [
            'profit'=>$investor->profit+$input['amount']
        ];

        $update = User::where('id',$input['id'])->update($data);
        if ($update){
            //send mail to investor
            $userMessage = "
                Your Profit balance has been credited with $<b>" . $input['amount'] . " .
            ";
            //SendInvestmentNotification::dispatch($investor, $userMessage, 'Profit Topup');
            $investor->notify(new InvestmentMail($investor, $userMessage, 'Profit Topup'));
        }
        return back()->with('success','Profit added');
    }
    public function addRef(Request $request)
    {
        $web = GeneralSetting::where('id',1)->first();
        $user = Auth::user();
        $validator = Validator::make($request->input(),[
            'id'=>['required','numeric'],
            'amount'=>['required','numeric'],
        ]);

        if ($validator->fails()){
            return back()->with('errors',$validator->errors());
        }
        $input = $validator->validated();

        $investor = User::where('id',$input['id'])->first();

        $data = [
            'refBal'=>$investor->refBal+$input['amount']
        ];

        $update = User::where('id',$input['id'])->update($data);
        if ($update){
            //send mail to investor
            $userMessage = "
                Your Referral balance has been credited with $<b>" . $input['amount'] . " .
            ";
            //SendInvestmentNotification::dispatch($investor, $userMessage, 'Referral Topup');
            $investor->notify(new InvestmentMail($investor, $userMessage, 'Referral Topup'));

        }
        return back()->with('success','Referral Balance added');
    }
    public function addWith(Request $request)
    {
        $web = GeneralSetting::where('id',1)->first();
        $user = Auth::user();
        $validator = Validator::make($request->input(),[
            'id'=>['required','numeric'],
            'amount'=>['required','numeric'],
        ]);

        if ($validator->fails()){
            return back()->with('errors',$validator->errors());
        }
        $input = $validator->validated();

        $investor = User::where('id',$input['id'])->first();

        $data = [
            'withdrawals'=>$investor->withdrawals+$input['amount']
        ];

        $update = User::where('id',$input['id'])->update($data);
        if ($update){
            //send mail to investor
            $userMessage = "
                Your Withdrawal request of $<b>" . $input['amount'] . "</b> has been processed
                and sent to your wallet Address. Your transaction hash is <b>".Str::random(200)."</b>
            ";
            //SendInvestmentNotification::dispatch($investor, $userMessage, 'Withdrawal Approved');
            $investor->notify(new InvestmentMail($investor, $userMessage, 'Withdrawal Approved'));

        }
        return back()->with('success','Withdrawal added');
    }

    public function subFund(Request $request)
    {
        $web = GeneralSetting::where('id',1)->first();
        $user = Auth::user();
        $validator = Validator::make($request->input(),[
            'id'=>['required','numeric'],
            'amount'=>['required','numeric'],
        ]);

        if ($validator->fails()){
            return back()->with('errors',$validator->errors());
        }
        $input = $validator->validated();

        $investor = User::where('id',$input['id'])->first();

        $data = [
            'balance'=>$investor->balance-$input['amount']
        ];

        $update = User::where('id',$input['id'])->update($data);

        return back()->with('success','Balance subtracted');
    }
    public function subProfit(Request $request)
    {
        $web = GeneralSetting::where('id',1)->first();
        $user = Auth::user();
        $validator = Validator::make($request->input(),[
            'id'=>['required','numeric'],
            'amount'=>['required','numeric'],
        ]);

        if ($validator->fails()){
            return back()->with('errors',$validator->errors());
        }
        $input = $validator->validated();

        $investor = User::where('id',$input['id'])->first();

        $data = [
            'profit'=>$investor->profit-$input['amount']
        ];

        $update = User::where('id',$input['id'])->update($data);

        return back()->with('success','Profit subtracted');
    }
    public function subRef(Request $request)
    {
        $web = GeneralSetting::where('id',1)->first();
        $user = Auth::user();
        $validator = Validator::make($request->input(),[
            'id'=>['required','numeric'],
            'amount'=>['required','numeric'],
        ]);

        if ($validator->fails()){
            return back()->with('errors',$validator->errors());
        }
        $input = $validator->validated();

        $investor = User::where('id',$input['id'])->first();

        $data = [
            'refBal'=>$investor->refBal-$input['amount']
        ];

        $update = User::where('id',$input['id'])->update($data);

        return back()->with('success','Referral Balance subtracted');
    }
    public function subWith(Request $request)
    {
        $web = GeneralSetting::where('id',1)->first();
        $user = Auth::user();
        $validator = Validator::make($request->input(),[
            'id'=>['required','numeric'],
            'amount'=>['required','numeric'],
        ]);

        if ($validator->fails()){
            return back()->with('errors',$validator->errors());
        }
        $input = $validator->validated();

        $investor = User::where('id',$input['id'])->first();

        $data = [
            'withdrawals'=>$investor->withdrawals-$input['amount']
        ];

        $update = User::where('id',$input['id'])->update($data);

        return back()->with('success','Withdrawal subtracted');
    }
    public function addLoan(Request $request)
    {
        $web = GeneralSetting::where('id',1)->first();
        $user = Auth::user();
        $validator = Validator::make($request->input(),[
            'id'=>['required','numeric'],
            'amount'=>['required','numeric'],
        ]);

        if ($validator->fails()){
            return back()->with('errors',$validator->errors());
        }
        $input = $validator->validated();

        $investor = User::where('id',$input['id'])->first();

        $data = [
            'loan'=>$investor->loan+$input['amount']
        ];

        $update = User::where('id',$input['id'])->update($data);

        return back()->with('success','Debt added');
    }

    public function subLoan(Request $request)
    {
        $web = GeneralSetting::where('id',1)->first();
        $user = Auth::user();
        $validator = Validator::make($request->input(),[
            'id'=>['required','numeric'],
            'amount'=>['required','numeric'],
        ]);

        if ($validator->fails()){
            return back()->with('errors',$validator->errors());
        }
        $input = $validator->validated();

        $investor = User::where('id',$input['id'])->first();

        $data = [
            'loan'=>$investor->loan-$input['amount']
        ];

        $update = User::where('id',$input['id'])->update($data);
        if ($update){
            //send mail to investor
            $userMessage = "
                $<b>" . $input['amount'] . "</b> has been cleared off your loan. Contact support for more
                information.
            ";
            //SendInvestmentNotification::dispatch($investor, $userMessage, 'Loan Debit');
            $investor->notify(new InvestmentMail($investor, $userMessage, 'Loan Debit'));
        }
        return back()->with('success','Debt subtracted');
    }

     public function loginUser($id)
    {
        $web = GeneralSetting::where('id',1)->first();
        $user = Auth::user();

        $investor = User::where('id',$id)->first();

        Auth::logout();

        Auth::login($investor);

        return redirect(route('user.dashboard')) ->with('success','Login Successful');

    }
    public function activateKyc($id)
    {
        $data =[
            'kycStatus'=>1
        ];
        User::where('id',$id)->update($data);

        return back()->with('success','Successful');
    }
    public function rejectKyc($id)
    {
        $data =[
            'kycStatus'=>2
        ];
        User::where('id',$id)->update($data);

        return back()->with('success','Successful');
    }
    public function mailUser(Request $request)
    {
        $web = GeneralSetting::where('id',1)->first();
        $user = Auth::user();
        $validator = Validator::make($request->input(),[
            'id'=>['required','numeric'],
            'subject'=>['required','string'],
            'content'=>['required']
        ]);

        if ($validator->fails()){
            return back()->with('errors',$validator->errors());
        }
        $input = $validator->validated();

        $investor = User::where('id',$input['id'])->first();

        Mail::create([
            'title'=>$input['subject'],
            'content'=>$input['content'],
            'user'=>$investor->id
        ]);

        $investor->notify(new InvestmentMail($investor, $input['content'], $input['subject']));

        return back()->with('success','Mail Sent');
    }
}
