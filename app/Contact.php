<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

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

        use SoftDeletes;
        public $timestamps = false;

    protected $guarded = [];

    protected $table = 'contacts';
}
