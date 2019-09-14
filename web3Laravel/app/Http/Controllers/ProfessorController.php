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

  public function excluir($id) {
    $professor = Professor::find($id);
    $professor->delete();
    return redirect('professor/lista3');
  }

  public function novo() {
    $professor = new Professor();
    return view ('formulario', ['professor' => $professor]);
  }
  public function editar($id) {
    $professor = Professor::find($id);
    return view ('formulario', ['professor' => $professor]);
  }

  public function salvar() {
    echo "salvando em alguns instantes ....";
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
