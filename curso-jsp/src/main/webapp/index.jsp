<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Curso JSP</title>
</head>
<body>

<h1>Bem vindo ou nao</h1>


<form action="ServletLogin" method="post">

<table>
	<tr>
		<td><label>Login</label> </td>
		<td>
		<input name= "Login" type="text">
		</td>
	</tr>
	
	
	<tr>
		<td><label>Senha</label> </td>
		<td>
		<input name= "Senha" type="password">
		</td>
	</tr>
	
	<tr>
		<td>
		<input type="submit" value="Enviar">
		</td>
	</tr>
	
</table>


</form>

<h4>${msg}</h4>
</body>
</html>