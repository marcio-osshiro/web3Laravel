<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Professor;
use App\Sala;
use App\Horario;

class HorarioController extends Controller
{
    //
    public function editar($id) {
      $professor = Professor::find($id);
      $salas = Sala::all();
      return view ('horario.formulario', compact('professor', 'salas') );

    }
    public function salvar(Request $request) {
      $horario = new Horario();
      $horario->professor_id = $request->input('id');
      $horario->dia = $request->input('dia');
      $horario->inicio = $request->input('inicio');
      $horario->fim = $request->input('fim');
      $horario->sala_id = $request->input('sala_id');
      $horario->save();
      return redirect()->action('HorarioController@editar', ['id' => $request->input('id')]);

    }

    public function excluir($id) {
      $horario = Horario::find($id);
      $id_professor = $horario->professor_id;
      $horario->delete();
      return redirect()->action('HorarioController@editar', ['id' => $id_professor]);
    }


}
