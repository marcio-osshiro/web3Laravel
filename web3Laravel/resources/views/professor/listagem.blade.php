@extends('layouts.main')

@section('content')
  <h1>Listagem de Professores</h1>
  <a href="/professor/novo" class="btn btn-primary">Novo</a>
  <table class="table table-striped table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Area</th>
        <th>Dt.Nasc.</th>
        <th>Salário</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      @foreach($professores as $professor)
        <tr>
        <td>{{ $professor->id }}</td>
        <td>{{ $professor->nome }}</td>
        <td>{{ $professor->area->descricao }}</td>
        <td>{{ Carbon\Carbon::parse($professor->data_nascimento)->format('d/m/Y') }}</td>
        <td>{{ $professor->salario }}</td>
        <td>
          <a class='btn btn-primary' href='/professor/edita/{{$professor->id}}'>Editar</a>
          <a class='btn btn-danger' href='/professor/delete/{{$professor->id}}'>Excluir</a>
        </td>
        </tr>
      @endforeach
    </tbody>
  </table>
@endsection
