@extends('base')

@section('main')
<div class="row">
<div class="col-sm-12">
    <h1 class="display-3">Contacts</h1>    
  <table class="table table-striped">
    <thead>
        <tr>
          <td>Image</td>
          <td>ID</td>
          <td>Name</td>
          <td>Email</td>
          <td>Contact</td>
          <td>Address</td>
          <td colspan = 3>Actions</td>
          <td colspan = 3>Logs </td>
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
            <a href="{{ route('contacts.view', ['contacts' => $contact->id])}}" class="btn btn-success">View</a>
            </td>
            <td>
                <a href="{{ route('contacts.edit', ['contacts' => $contact->id])}}" class="btn btn-primary">Edit</a>
            </td>
            <td>
                <form action="{{ route('contacts.destroy', $contact->id)}}" method="post">
                  @csrf
                  @method('DELETE')
                  <button class="btn btn-danger" type="submit">Delete</button>
                </form>
           
            </td>
            <td> <a href = "contacts/history/{{$contact->id}}"> view activity logs </a> </td>
        </tr>

        @endforeach
    </tbody>
    
    <div align ="right">
        <a style="margin: 19px;" href="{{ route('contacts.create')}}" class="btn btn-primary">New contact</a>
        <a href="contacts/deleted"> View Deleted Contacts</a>

    </div>  
    
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

 
