<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
    <div class="container">
      <h1>Listagem de Professores</h1>
      <table class="table table-striped table-bordered">
        <thead>
          <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Area</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($professores as $professor)
            <tr>
              <td>{{$professor->id}}</td>
              <td>{{$professor->nome}}</td>
              <td>{{$professor->area_id}}</td>
            </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </body>
</html>
