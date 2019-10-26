<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Professor extends Model
{
    //
     protected $table = 'professor';
     public $timestamps = false;
     protected $fillable = ['nome', 'area_id', 'foto'];

     public function area() {
       return $this->belongsTo("App\Area");
     }

     public function horarios() {
       return $this->hasMany("App\Horario");
     }

}
