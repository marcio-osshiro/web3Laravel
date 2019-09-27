@extends('layouts.main')

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
  <h1>Formulário do Professor</h1>
  <form action="{{ url('/professor/salva') }}" method="post">
    @csrf
    <div class="form-group">
      <label for="id">ID</label>
      <input readonly type="text" class="form-control" id="id" name="id" value="{{$professor->id}}">
    </div>
    <div class="form-group">
      <label for="nome">Nome</label>
      <input type="text" class="form-control" id="nome" placeholder="Informe o nome" name="nome" value="{{ old('nome', $professor->nome)}}">
    </div>
    <div class="form-group">
      <label for="area_id">Area</label>
      <select name="area_id" class="custom-select">
        @foreach($areas as $area)
        <option value="{{$area->id}}" {{old('area_id', $professor->area_id) == $area->id? "selected": ""}}>{{$area->descricao}}</option>
        @endforeach
      </select>
    </div>
    <div class="form-group">
      <label for="data_nascimento">Data Nascimento</label>
      <input type="date" class="form-control" id="data_nascimento" placeholder="Informe a data nascimento" name="data_nascimento" value="{{ old('data_nascimento', $professor->data_nascimento)}}">
    </div>
    <div class="form-group">
      <label for="salario">Salário</label>
      <input type="number" class="form-control" id="salario" placeholder="Informe o salário" name="salario" value="{{ old('salario', $professor->salario)}}">
    </div>

    <button type="submit" class="btn btn-primary">Salvar</button>
  </form>
@endsection
