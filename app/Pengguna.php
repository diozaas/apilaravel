<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengguna extends Model
{
    protected $table = 'users';

    protected $hidden = [
	    'password', 'remember_token','api_token'
	];
}
