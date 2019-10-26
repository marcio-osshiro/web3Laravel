<?php

use Illuminate\Database\Seeder;

class SalaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        for($i=1;$i<7;$i++) {
          $sala = new App\Sala();
          $sala->descricao = 'LAB D20'.$i;
          $sala->save();
        }
    }
}
