<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Professor;

class ApiProfessorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response(Professor::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $professor = new Professor();
        $professor->foto = "";
        $professor->nome = $request->input('nome');
        $professor->area_id = 1;
        $professor->salario = 1000;
        $professor->data_nascimento = Now();
        $professor->email = $request->input('email');
        $professor->save();
        return response()->json(['mensagem'=>'professor salvo com sucesso']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Professor $professor)
    {
        return $professor;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Professor $professor)
    {
        $professor->foto = "";
        $professor->nome = $request->input('nome');
        $professor->area_id = 1;
        $professor->salario = 1000;
        $professor->data_nascimento = Now();
        $professor->email = $request->input('email');
        $professor->save();
        return response()->json(['mensagem'=>'professor alterado com sucesso']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Professor $professor)
    {
        if ($professor) {
          $professor->delete();
        }
        return response(['mensagem' => 'professor removido']);
    }
}
