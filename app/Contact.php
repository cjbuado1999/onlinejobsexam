<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    //
    // protected $fillable = [
    //     'name',
    //     'email',
    //     'contact',
    //     'address',
    //     'availability',
    //     'note'
    // ];

    protected $guarded = [];

    protected $table = 'contacts';
}
