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
	<h1>Perfil Empresa</h1>
	
	<br>
	<button> <a href="${pageContext.request.contextPath}/perfilEmpresa/findOne?idPerfilEmpresa=&opcion=1"> Agregar </a></button>
	<br>
	<table>
		<thead>
			<tr>
				<th>N°</th>
				<th>logo</th>				
				<th>opcColor1</th>
				<th>opcColor2</th>
				<th>Empresa</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${perfiles}">
			<tr>
				<td>${item.idPerfilEmpresa}</td>
				<td>${item.logo}</td>				
				<td>${item.opcColor1}</td>
				<td>${item.opcColor2}</td>
				<td>${item.empresa.nombreempresa}</td>
				<td>
					<button> <a href="${pageContext.request.contextPath}/perfilEmpresa/findOne?idPerfilEmpresa=${item.idPerfilEmpresa}&opcion=1"> Actualizar </a></button>
					<button> <a href="${pageContext.request.contextPath}/perfilEmpresa/findOne?idPerfilEmpresa=${item.idPerfilEmpresa}&opcion=2"> Eliminar </a></button>
					
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>