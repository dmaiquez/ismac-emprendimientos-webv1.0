<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<h1>Borrar Sucursal</h1>
	
	<form action="del" method="GET">
	<input type="hidden" id="idLibro" name="idLibro" value="${sucursal.idSucursal}">
	<strong>¿Desea eliminar el dato?</strong>
	<br/><br/>
	<button type="submit">Eliminar</button>
	<button type="button" onclick="window.location.href='/ismac-emprendimientos-web/sucursales/findAll';return false;">Cancelar</button>
	</form>
	
</body>
</html>