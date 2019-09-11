<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    @foreach($professores as $professor)
      <p>{{ $professor->nome }}</p>
    @endforeach
  </body>
</html>
