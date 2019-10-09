<?php

use Illuminate\Database\Seeder;

class ProfessorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();

        for($i=0;$i<100;$i++) {
            $area = App\Area::inRandomOrder()->first();
            $professor = new App\Professor();
            $professor->nome = $faker->name;
            $professor->area()->associate($area);
            $professor->data_nascimento = $faker->date;
            $professor->salario = $faker->randomFloat(2, 1, 20000);
            $professor->save();
        }
    }
}
