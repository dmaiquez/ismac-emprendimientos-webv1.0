<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
           <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1>Tipos</h1>
	
	<button> 
	<a href="${pageContext.request.contextPath}/tipousuarios/findOne?opcion=1"> Agregar </a>
	</button>
	
	
	<table>
	
		<thead>
	
				<tr>
				
				
				<th>idtipoUs</th>
				<th>tipodeUser</th>
				<th>descripcion</th>
			
				<th>Acciones</th>
				
				</tr>
	
	</thead>
	
	<tbody>
	
	<tr>	
	
		<td>idtipoUs</td>
		<td>tipodeUser</td>
		<td>descripcion</td>
	
		<td>Acciones</td>

	</tr>
	
	</tbody>

		<c:forEach var="item" items="${tipousuarios}">
			<tr>	
	
		<td>${item.idtipoUs}</td>
		<td>${item.tipodeUser}</td>
		<td>${item.descripcion}</td>
	
		<td>
		<button> <a href="${pageContext.request.contextPath}/tipousuarios/findOne?idtipoUs=${item.idtipoUs}&opcion=1"> Actualizar </a></button>
		<button> <a href="${pageContext.request.contextPath}/tipousuarios/findOne?idtipoUs=${item.idtipoUs}&opcion=2"> Eliminar </a></button>

		</td>

	</tr>
		</c:forEach>
	
	</table>
	

</body>
</html>