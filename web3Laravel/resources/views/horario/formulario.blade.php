@extends('layouts.main')

<style>
  .foto-professor {
    width: 150px;
  }
</style>


@section('content')
  @if ($errors->any())
      <div class="alert alert-danger">
          <ul>
              @foreach ($errors->all() as $error)
                  <li>{{ $error }}</li>
              @endforeach
          </ul>
      </div>
  @endif
  <h1>Horário de Atendimento do Professor</h1>
  @if ( $professor->foto != "" )
    <img class="foto-professor" src="{{ Storage::url('fotos/'.$professor->foto) }}">
  @else
    <img class="foto-professor" src="{{ Storage::url('fotos/carinha.jpg') }}">
  @endif
  <form action="{{ url('/horario/salva') }}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
      <label for="id">ID</label>
      <input readonly type="text" class="form-control" id="id" name="id" value="{{$professor->id}}">
    </div>
    <div class="form-group">
      <label for="nome">Nome</label>
      <input readonly type="text" class="form-control" id="nome" placeholder="Informe o nome" name="nome" value="{{ old('nome', $professor->nome)}}">
    </div>
    <div class="form-group">
      <label for="dia">Dia</label>
      <select name="dia" class="custom-select">
        <option value="seg">Segunda-Feira</option>
        <option value="ter">Terça-Feira</option>
        <option value="qua">Quarta-Feira</option>
        <option value="qui">Quinta-Feira</option>
        <option value="sex">Sexta-Feira</option>
        <option value="sab">Sábado</option>
      </select>
    </div>
    <div class="form-group">
      <label for="sala_id">Sala</label>
      <select name="sala_id" class="custom-select">
        @foreach($salas as $sala)
        <option value="{{$sala->id}}">{{$sala->descricao}}</option>
        @endforeach
      </select>
    </div>
    <div class="form-group">
      <label for="inicio">Início</label>
      <input type="text" class="form-control" id="inicio" placeholder="Informe o início" name="inicio">
    </div>
    <div class="form-group">
      <label for="fim">Fim</label>
      <input type="text" class="form-control" id="fim" placeholder="Informe o fim" name="fim">
    </div>
    <button type="submit" class="btn btn-primary">Salvar</button>
  </form>

  <table class="table table-striped table-bordered">
    <thead>
      <tr>
        <th>Dia</th>
        <th>Sala</th>
        <th>Inicio</th>
        <th>Fim</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      @foreach($professor->horarios as $horario)
        <td>{{ $horario->dia }}</td>
        <td>{{ $horario->sala->descricao }}</td>
        <td>{{ $horario->inicio }}</td>
        <td>{{ $horario->fim }}</td>
        <td>
          <a class='btn btn-danger' href='/horario/delete/{{$horario->id}}'>Excluir</a>
        </td>
        </tr>
      @endforeach
    </tbody>
  </table>

@endsection
