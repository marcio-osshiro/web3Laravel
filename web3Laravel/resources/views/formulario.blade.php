<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    <div class="container">
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
          <select name="area_id">
            @foreach($areas as $area)
            <option value="{{$area->id}}" {{old('area_id', $professor->area_id) == $area->id? "selected": ""}}>{{$area->descricao}}</option>
            @endforeach
          </select>
        </div>
        <button type="submit" class="btn btn-primary">Salvar</button>
      </form>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
