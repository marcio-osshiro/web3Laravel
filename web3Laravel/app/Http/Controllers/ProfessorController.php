<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Professor;
use App\Area;
use Validator;
use App\Http\Requests\ProfessorRequest;
use Illuminate\Support\Str;
use Barryvdh\DomPDF\Facade as PDF;

class ProfessorController extends Controller
{
  public function __construct()
  {
      $this->middleware('auth')->except("lista");
  }

  public function lista() {
    $professores = Professor::paginate(5);
    return view('professor.listagem', ['professores'=> $professores]);
  }

  public function excluir($id) {
    $professor = Professor::find($id);
    $professor->delete();
    return redirect('professor/lista3');
  }

  public function novo() {
    $professor = new Professor();
    $areas = Area::all();
    return view ('professor.formulario', compact('professor', 'areas') );
  }
  public function editar($id) {
    $professor = Professor::find($id);
    $areas = Area::all();
    return view ('professor.formulario', compact('professor', 'areas') );
  }

  public function salvar1(ProfessorRequest $request) {
    $file = $request->file('foto');

    $id = $request->input('id');
    if ($id=="") { // novo
        $professor = new Professor();
        $professor->foto = "";
    } else { // alteração
      $professor = Professor::find($id);
    }
    if (isset($file)) {
      $random_name = Str::random(27);
      $extension = $file->getClientOriginalExtension();
      $filename=$random_name.'.'.$extension;
      $upload = $file->storeAs('fotos', $filename);
      $professor->foto = $filename;
    }
    $professor->nome = $request->input('nome');
    $professor->area_id = $request->input('area_id');
    $professor->salario = $request->input('salario');
    $professor->data_nascimento = $request->input('data_nascimento');
    $professor->save();
    return redirect('professor/lista3');
  }


  public function salvar(Request $request) {
    var_dump($request->file('foto'));
    return;
    // $validatedData = $request->validate([
    //         'nome' => 'required|min:20',
    //     ]);

    $validator = Validator::make($request->all(), [
                'nome' => 'required|min:10',
            ]);

    if ($validator->fails()) {
        $professor = new Professor();
        $professor->nome = $request->input('nome');
        $professor->id = $request->input('id');
        $professor->area_id = $request->input('area_id');




        $errors = $validator->messages();
        $areas = Area::all();
        return view('professor.formulario', compact('professor', 'errors', 'areas'));
    }
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

  public function report() {
    $professores = Professor::all();
    $pdf = PDF::loadView('report.professor', compact('professores'));
    //return $pdf->stream('professores.pdf');
    return $pdf->download('professores.pdf');
  }
}
