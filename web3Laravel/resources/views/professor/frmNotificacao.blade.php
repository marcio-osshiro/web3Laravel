@extends('layouts.main')

<style>
  .foto-professor {
    width: 300px;
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
  <h1>Notificação do Professor</h1>
  <!-- @if ( $professor->foto != "" )
    <img class="foto-professor" src="{{ Storage::url('fotos/'.$professor->foto) }}">
  @else
    <img class="foto-professor" src="{{ Storage::url('fotos/carinha.jpg') }}">
  @endif -->
  <form action="{{ url('/professor/notifica') }}" method="post" enctype="multipart/form-data">
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
      <label for="assunto">Assunto</label>
      <select name="assunto" class="custom-select">
        <option value="Administrativo">Administrativo</option>
        <option value="Academico">Academico</option>
        <option value="Informativo">Informativo</option>
        <option value="Urgente">Urgente</option>
      </select>
    </div>
    <div class="form-group">
      <label for="mensagem">Mensagem</label>
      <textarea name="mensagem" id="mensagem" rows="8" class="form-control"></textarea>
    </div>

    <button type="submit" class="btn btn-primary">Salvar</button>
  </form>
@endsection
