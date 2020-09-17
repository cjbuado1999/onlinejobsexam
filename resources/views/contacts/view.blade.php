@extends('base') 
@section('main')
<div class="row">
    <div class="col-sm-8 offset-sm-2">


        @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        <br /> 
        @endif
        <form method="post" action="{{ route('contacts.update', $contact->id) }}" enctype="multipart/form-data"> 
            @method('PATCH') 
            @csrf

            <br><br><br>
            <center> <img src="{{asset('uploads/pictures/' . $contact -> image) }}" width = "500px" heigth = "100px" style = "border-radius: 50%;"> <br>  <br>
              @if ($contact-> Note == "none")
            No comment
            @else
             Note! {{ $contact->Note }} 
            @endif</center>   
            <div class="form-group" style= "align:center">
         <br><br>
 
                <label for="name">Name: &nbsp;</label>{{ $contact->name }}
            </div>

            <div class="form-group">
                <label for="last_name">Email: &nbsp;</label>{{ $contact->email }}

            </div>

            <div class="form-group">
                <label for="email">Contact: &nbsp;</label>{{ $contact->contact }}

            </div>
            <div class="form-group">
                <label for="city">Address: &nbsp;</label>{{ $contact->address }}
            </div>
            <div class="form-group">
         
            </div>
          
        </form>
    </div>
</div>
@endsection