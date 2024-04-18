@extends('user.base')

@section('content')

    @if($user->kycStatus==1)
        <div class="ui-kit-card mb-24">
            <h3>KYC Verification</h3>
            <div class="alert alert-success" role="alert">
                <h4 class="alert-heading">Submission Approved</h4>
                <p>
                    Your KYC has been approved.
                </p>
            </div>
        </div>
    @elseif($user->kycStatus==4)
        <div class="ui-kit-card mb-24">
            <h3>KYC Verification</h3>
            <div class="alert alert-primary" role="alert">
                <h4 class="alert-heading">Submission Received</h4>
                <p>
                    We are currently reviewing your KYC submission
                </p>
            </div>
        </div>

    @else
        <!-- DataTales Example -->
        <div class="card mt-5">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">
                    KYC Verification
                </h6>
            </div>
            <div class="card-body row">
                <div class="col-md-12 mx-auto">
                    <form method="post" action="{{route('kyc.submit')}}" enctype="multipart/form-data">
                        @csrf
                        <div class="row mt-3">
                            <div class="form-group col-md-12 mt-3">
                                <label for="inputEmail4">ID Card</label>
                                <input type="file" class="form-control" id="inputEmail4"
                                       name="idCard" accept="image/*"/>
                            </div>
                            <div class="form-group col-md-12 mt-3">
                                <label for="inputEmail4">Selfie</label>
                                <input type="file" class="form-control" id="inputEmail4"
                                       name="selfie" accept="image/*"/>
                            </div>
                        </div>
                        <div class="text-center mt-5">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    @endif


@endsection
