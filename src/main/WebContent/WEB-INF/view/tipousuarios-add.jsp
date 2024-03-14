<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




<h1> Tipo </h1>

<form action="add" method="POST">

	idtipoUs
	<input type="hidden" id="idtipoUs" name="idtipoUs" value="${tipousuarios.idtipoUs}">
	<br/><br>
	tipodeUser
	 	<input type="text" id="tipodeUser" name="tipodeUser" value="${tipousuarios.tipodeUser}">
	<br/><br>
	descripcion
		<input type="text" id="descripcion" name="descripcion" value="${tipousuarios.descripcion}">
	<br/><br>
	
	<button type="submit">Guardar</button>
	<button type="button" onclick="window.location.href='/ismac-emprendimientos1-web/tipousuarios/findAll';return false;">Cancelar</button>
	 

</form>

</body>
</html>