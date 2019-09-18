<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Professor;
use App\Area;

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
    $areas = Area::all();
    return view ('formulario', compact('professor', 'areas') );
  }
  public function editar($id) {
    $professor = Professor::find($id);
    $areas = Area::all();
    return view ('formulario', compact('professor', 'areas') );
  }

  public function salvar(Request $request) {
    $id = $request->input('id');
    if ($id=="") { // novo
        $professor = new Professor();
    } else { // alteração
      $professor = Professor::find($id);
    }
    $professor->nome = $request->input('nome');
    $professor->area_id = $request->input('area_id');
    $professor->save();
    return redirect('professor/lista3');
  }
}
