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
         <table class="table table-striped">
    <thead>
        <tr>
          <!-- <td>Image</td> -->
          <td>ID</td>
          <td>Name</td>
          <td>Contact</td>
          <td>Activity Log </td>
          <td> is deleted? </td>
          <td>Note </td>

        </tr>
    </thead>
    <tbody>
    

    <tr>
            <!-- <td><img src="{{asset('uploads/pictures/' . $contact -> image) }}" width = "100px" heigth = "100px"></td> -->
            <td>{{$contact->id}}</td>
            <td>{{$contact->name}} </td>
            <td>{{$contact->contact}}</td>
            <td> {{$contact->updated_at}}</td>
            <td>   @if ($contact-> deleted_at == null)
              Contact not deleted
                @else
                 Contact Deleted at  {{ $contact->deleted_at }} 
                @endif
            </td>
            <td>   @if ($contact-> Note == "none")
               No notes Added
                  @else
                   You added a note <br> - {{ $contact->Note }} -
                  @endif
              </td>
            </tbody>
            </table>
      
          
        </form>
    </div>
</div>
@endsection