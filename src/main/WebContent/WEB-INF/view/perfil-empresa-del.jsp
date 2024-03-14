<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h1>Borrar Perfil</h1>
	
	<form action="del" method="GET">
	<input type="hidden" id="idPerfilEmpresa" name="idPerfilEmpresa" value="${perfil.idPerfilEmpresa}">
	<strong>¿Desea eliminar el dato?</strong>
	<br/><br/>
	<button type="submit">Eliminar</button>
	<button type="button" onclick="window.location.href='/ismac-libreria-web/libros/findAll';return false;">Cancelar</button>
	</form>
</body>
</html>