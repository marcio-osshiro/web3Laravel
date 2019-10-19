@extends('layouts.main')

@section('content')
<style>
  .foto-professor {
    width: 100px;
  }
</style>
  <h1>Listagem de Professores</h1>
  <a href="/professor/novo" class="btn btn-primary">Novo</a>
  <table class="table table-striped table-bordered">
    <thead>
      <tr>
        <th></th>
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
        <td>
          @if ( $professor->foto != "" )
            <img class="foto-professor" src="{{ Storage::url('fotos/'.$professor->foto) }}">
          @else
          <img class="foto-professor" src="{{ Storage::url('fotos/carinha.jpg') }}">
          @endif
        </td>
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
  {{ $professores->links() }}
@endsection
