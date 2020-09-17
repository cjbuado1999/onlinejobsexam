@extends('base')

@section('main')
<div class="row">
 <div class="col-sm-8 offset-sm-2">
    <h1 class="display-3">Add a contact</h1>
  <div>
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div><br />
    @endif
      <form method="post" action="{{ route('contacts.store') }}" enctype="multipart/form-data"> 
          @csrf
          <div class="form-group">    
              <label for="first_name">Name:</label>
              <input type="text" class="form-control" name="name"/>
          </div>

          <div class="form-group">
              <label for="last_name">Email:</label>
              <input type="text" class="form-control" name="email"/>
          </div>

          <div class="form-group">
              <label for="email">Contact:</label>
              <input type="text" class="form-control" name="contact"/>
          </div>
          <div class="form-group">
              <label for="city">Address:</label>
              <input type="text" class="form-control" name="address"/>
          </div>                       
          <div class="input-group">
          <input type="file" class="form-control" name="image"/>
              <label for="image"></label>
              
          </div>       
          <input type = "hidden" value = "1" name = "availability">                
          <input type = "hidden" value = "none" name = "note">      
        <center>  <button type="submit" class="btn btn-primary-outline">Add contact</button> </center>
      </form>
  </div>
</div>
</div>
@endsection