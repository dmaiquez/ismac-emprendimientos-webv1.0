<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<h1>Sucursales</h1>
		
		<br>
	<button> <a href="${pageContext.request.contextPath}/sucursales/findOne?idLibro=&opcion=1"> Agregar </a></button>
	<br>
	<table>
		<thead>
			<tr>
				<th>N°</th>
				<th>Sucursal</th>				
				<th>descripcion</th>
				<th>Empresa</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${sucursales}">
			<tr>
				<td>${item.idSucursales}</td>
				<td>${item.sucursal}</td>				
				<td>${item.descripcion}</td>
				<td>${item.empresa.nombreempresa}</td>
				<td>
					<button> <a href="${pageContext.request.contextPath}/sucursales/findOne?idSucursales=${item.idSucursales}&opcion=1"> Actualizar </a></button>
					<button> <a href="${pageContext.request.contextPath}/sucursales/findOne?idSucursales=${item.idSucursales}&opcion=2"> Eliminar </a></button>
					
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
		
</body>
</html>