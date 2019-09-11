<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Professor;

class ProfessorController extends Controller
{
  public function lista() {
    $professores = Professor::all();
    return view('listagem', ['professores'=> $professores]);
  }
    // public function lista() {
    //   $professores = Professor::all();
    //   return view('professor.lista', ['professores' => $professores]);
    // }
    // public function salva() {
    //   $professor = Professor::find(34);
    //   $professor->delete();
    //
    //   echo "professor apagado";
    // }
}
