<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tela para exibição de Erros</title>
</head>
<body>

<h1>Mensagem de Erro, entre em contato com a equipe de suporte de erro!</h1>

<%
	out.print(request.getAttribute("msg"));
%>

</body>
</html>