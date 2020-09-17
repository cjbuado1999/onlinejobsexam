@extends('base')

@section('main')

<div class="row">
<div class="col-sm-12">
    <h1 class="display-3">Deleted Contacts</h1>    
  <table class="table table-striped">
    <thead>
        <tr>
          <td>Image</td>
          <td>ID</td>
          <td>Name</td>
          <td>Email</td>
          <td>City</td>
          <td>Address</td>
          <td colspan = 3>Actions</td>

        </tr>
    </thead>
    <tbody>
        @foreach($contacts as $contact)


        <tr>
            <td><img src="{{asset('uploads/pictures/' . $contact -> image) }}" width = "100px" heigth = "100px"></td>
            <td>{{$contact->id}}</td>
            <td>{{$contact->name}} </td>
            <td>{{$contact->email}}</td>
            <td>{{$contact->contact}}</td>
            <td>{{$contact->address}}</td>
            
        
            <td>
                <a href="{{ route('contacts.show', $contact->id)}}" class="btn btn-primary">Restore</a>
            </td>
          
        </tr>

        @endforeach
    </tbody>
  
    
  </table>
<div>
</div>
@endsection
<div class="col-sm-12">

  @if(session()->get('success'))
    <div class="alert alert-success">
      {{ session()->get('success') }}  
    </div>
  @endif
</div>

 
