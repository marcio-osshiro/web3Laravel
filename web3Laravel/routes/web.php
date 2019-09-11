<?php
use App\Professor;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/professor/lista', function() {
  $professores = DB::table('professor')->get();
  var_dump($professores);
  $professor = DB::table('professor')->where('id', 5)->get();
  echo "<br>";
  var_dump($professor);
  $professor2 = DB::table('professor')->find(8);
  echo "<br>";
  var_dump($professor2);
});

Route::get('/professor/lista2', function() {
  $professores = Professor::all();
  $professor = Professor::find(8);
  $professor->nome = "Frederico da Silva";
  $professor->save();
  //var_dump($professores);
  echo "<br>";
  var_dump($professor);
});

Route::get('/professor/lista3', 'ProfessorController@lista');

//Route::get('/professor/salva', 'ProfessorController@salva');
