<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Horario extends Model
{
    protected $table = 'horario';

    public function professor()
    {
        return $this->belongsTo('App\Professor');
    }

    public function sala()
    {
        return $this->belongsTo('App\Sala');
    }

}
