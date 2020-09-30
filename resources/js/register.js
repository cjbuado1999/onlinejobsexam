$(function() {

    displayData();

    $('#submitButton').on('click', function (e) {
        let _this = this;
        e.preventDefault();
        $.ajax({
            type:"POST",
            url: "/addcontacts",
            data: $('#addform').serialize(),
            success: function (response) {
                displayData();
                $('#myModal').modal('hide')
                alert("Data potangena");
        },
        error: function(error){
        console.log(error)
        alert("Data Not Saved");
        }

        });
    });

    function displayData () { 
        $('#contacts_table').DataTable({
            destroy: true,
            processing: true,
            serverSide: true,
            ajax: {
            url: "/contacts",
            },
            columns: [
                {
                data: 'image',
                name: 'image'
                },
                {
                data: 'id',
                name: 'id'
                },
                {
                data: 'name',
                name: 'name'
                },
                {
                data: 'email',
                name: 'email',
                orderable: false
                },
                {
                data: 'contact',
                name: 'contact',
                orderable: false
                },
                {
                data: 'address',
                name: 'address',
                orderable: false
                },
                {
                data: 'action',
                name: 'action',
                orderable: false        
                },
                {
                data: 'logs',
                name: 'logs',
                orderable: false        
                },
              
            ]
        });
    }

    var user_id;

    $(document).on('click', '.delete', function(){
     user_id = $(this).attr('id');
     $('#confirmModal').modal('show');
    });
   
    $('#ok_button').on('click', function(){
     $.ajax({
      url:"contacts/destroy/"+user_id,
      success:function(data)
      {
       setTimeout(function(){
        displayData();
        $('#confirmModal').modal('hide');
        $('#user_table').DataTable().ajax.reload();
       }, 2000);
      },
      error: function(error){
        console.log(error)
        alert("Data Not deleted");
        }
     })
    });



    $(document).on('click', '.edit', function(){
        var id = $(this).attr('id');
        $('#form_result').html('');
        $('#myeditModal').modal('show');
        
        $tr = $(this).closest('tr');
        var data = $tr.children("td").map(function (){
                return $(this).text();
        }).get();
        console.log(data);
        $('#id').val(data[1]);
        $('#name').val(data[2]);
        $('#email').val(data[3]);
        $('#contact').val(data[4]);
        $('#address').val(data[5]);
       });

    $('#editform').on('submit', function(e){
        e.preventDefault();

        var id = $('#id').val();
        $.ajax({
            type: "PUT",
            url: "/contacts/update/"+id,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
            },
            datatype: 'json',
            data: $('#editform').serialize(),
            success: function (response){
                displayData();
                console.log(response);
                $('#myeditModal').modal('hide');
                
            },
            error: function(error){
                console.log(error);
                alert("Not updated");
            }

        })
    
    });


});