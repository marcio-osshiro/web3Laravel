<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Area extends Model
{
    //
    protected $table = 'area';
    public $timestamps = false;

    public function professores() {
      return $this->hasMany('App\Professor');
    }

}
