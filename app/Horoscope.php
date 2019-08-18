<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Horoscope extends Model
{
    use SoftDeletes;

    protected $table = 'horoscopes';

    protected $fillable = [
        'name',
        'entirety',
        'love',
        'career',
        'wealth',
        'status',
    ];

    protected $dates = ['deleted_at'];
}
