<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<title>Curso JSP</title>

<style type="text/css">

form{
position:absolute;
top: 50%;
left: 33%;
right: 33%;

}

h1{
position:absolute;
top: 40%;
left: 33%;

}

h4{
position:absolute;
top: 70%;
left: 33%;

}
.btn-primary{
color: red;

}

</style>

</head>
<body>

<h1>Bem vindo ou nao</h1>


<form action="ServletLogin" method="post" class="row g-3">
  <input type="hidden" value="<%= request.getParameter("url")%>" name="url">

<div class ="col-md-6">
<label class="form-label">Login</label>
<input class="form-control" name="login" type="text">
</div>

<div class ="col-md-6">
<label class="form-label">Senha</label>
<input class="form-control" name="senha" type="password">
</div>

<div class ="col-md-6">
<input type="submit" value="Acessar" class="btn btn-primary">
</div>		
</form>


<h4>${msg}</h4>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>

</body>
</html>