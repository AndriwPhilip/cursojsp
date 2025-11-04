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
padding: 0px 20px 15px 20px;

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
background-color: #fff3cd;
}

.msg{
position: absolute;
top: 20%;
left: 33%;
font-size: 15px;
color:#664d03;
background-color: #fff3cd;
border-color: #ffecb5;
}

</style>

</head>
<body>

<h1>Bem vindo ou nao</h1>


<form action="<%=request.getContextPath() %>/ServletLogin" method="post" class="row g-3 needs-validation" novalidate>
  <input type="hidden" value="<%= request.getParameter("url")%>" name="url">

<div class ="mb-3">
	<label class="form-label">Login</label>
	<input class="form-control" name="login" type="text" required="required">
	<div class="invalid-feedback">
      Insira o Login!
 	</div>
</div>


<div class ="mb-3">
	<label class="form-label">Senha</label>
	<input class="form-control" name="senha" type="password" required>
	<div class="invalid-feedback">
      Insira a Senha!
 	</div>
</div>


<div class ="mb-3">
<input type="submit" value="Acessar" class="btn btn-primary">
</div>		
</form>




<h4 class="msg">${msg}</h4>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>

<script type="text/javascript">
//Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()

</script>

</body>
</html>