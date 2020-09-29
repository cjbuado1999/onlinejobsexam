@extends('base') 
@section('main')
<div class="row">
    <div class="col-sm-8 offset-sm-2">
        <h1 class="display-3">Update a contact</h1>

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
        <form method="post" action="{{ route('contacts.update', ['contact' => $contact->id]) }}" enctype="multipart/form-data"> 
            @method('PATCH') 
            @csrf
            <div class="form-group">

                <label for="name">First Name:</label>
                <input type="text" class="form-control" name="name" value={{ $contact->name }} required/>
            </div>

            <div class="form-group">
                <label for="last_name">Email:</label>
                <input type="email" class="form-control" name="email" value={{ $contact->email }} required/>
            </div>

            <div class="form-group">
                <label for="email">Contact:</label>
                <input type="text" class="form-control" name="contact" value={{ $contact->contact }}required />
            </div>
            <div class="form-group">
                <label for="city">Address:</label>
                <input type="text" class="form-control" name="address" value={{ $contact->address }}required />
            </div>
        
              <div class="form-group">
              <label for="city">Add Notes:</label>
                <input type="text" class="form-control" name="note" value="{{ $contact->Note }} "/>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</div>
@endsection