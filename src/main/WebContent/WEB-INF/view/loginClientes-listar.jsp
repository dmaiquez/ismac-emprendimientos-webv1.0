<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- <meta charset="ISO-8859-1"> -->
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<nav class="navbar bg-light">
<h1> EMPRENDIMIENTOS  </h1>
	<div class="lista">
		<ul style="display: inline"><a  href="${pageContext.request.contextPath}">Home</a></ul>
		<ul style="display: inline"><a  href="${pageContext.request.contextPath}/clientes/findAll">Clientes</a></ul>
		<ul style="display: inline"><a  href="${pageContext.request.contextPath}/libros/findAll">Libros</a></ul>
		<ul style="display: inline"><a  href="${pageContext.request.contextPath}/facturacion">Facturacion</a></ul>
		<ul style="display: inline"><a  href="${pageContext.request.contextPath}/reportes">Reportes</a></ul>
	</div>	
</nav>

<section class="py-5 px-5">
	<div class="container">
	
	<h1>LogIn Clientes</h1>
	
	<div class="container" style="text-align: center">
		<button class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos1-web/loginclientes/findOne?opcion=1';return false;">
			<i class="fa-solid fa-user-plus">
			<!-- agregar -->
			</i>
	
	</button>
	
	</div> 
	
	<div class="table-rsponsive">
	<table 	id="tabla1" 
			name="tabla1"
			data-height="600"
			data-search="true"
			data-pagination="true"
			data-toogle="tabla1"
			data-tollbar=".toolbar"
			class="table table-striped table-sm">
		<thead>
	
				<tr>
				
				<th data-field="id" data-sortable="true">id</th>
				<th data-field="user" data-sortable="true">user</th>
				<th data-field="password" data-sortable="true">password</th>
				<th data-field="newpassword" data-sortable="true">newpassword</th>
				<th data-field="confirmpassword" data-sortable="true">confirmpassword</th>
				<th data-field="loginCorreo" data-sortable="true">loginCorreo</th>
				<th data-field="loginToken" data-sortable="true">loginToken</th>
				<th data-field="SessiontimeIn" data-sortable="true">SessiontimeI</th>
				<th data-field="SessiontimeOUT" data-sortable="true">SessiontimeOUT</th>
				<th data-field="Sessiontiempo" data-sortable="true">Sessiontiempo</th>
			    <th data-field="Acciones" data-sortable="true">Acciones</th>
				
				
				</tr>
	
	</thead>
	
	<tbody>

		<c:forEach var="item" items="${loginClientes}">
		
			<tr>	
			
			
		<td>${item.id}</td>
		<td>${item.user}</td>
		<td>${item.password}</td>
		<td>${item.newpassword}</td>
		<td>${item.confirmpassword}</td>
		<td>${item.loginCorreo}</td>
		<td>${item.loginToken}</td>
		<td>${item.sessiontimeIn}</td>
		<td>${item.sessiontimeOUT}</td>
		<td>${item.sessiontiempo}</td>
	
		<td>
		
		<div class="container-fluid btn-group" role="group">
			<button class="btn btn-success" onclick="window.location.href='/ismac-emprendimientos1-web/loginclientes/findOne?id=${item.id}&opcion=1'">
			 <i class="fa-solid fa-arrows-rotate"></i> <!-- <p> Actualizar </p> --></button>
			<button class="btn btn-danger" onclick="window.location.href='/ismac-emprendimientos1-web/loginclientes/findOne?id=${item.id}&opcion=2'"> 
			<i class="fa-solid fa-trash"></i><!--<p> Eliminar </p> --></button>
		</div>
	
		</td>

	</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
	</div>
</section>

<footer>
<div class="" style="text-align: center"><p>Copyright &copy; Empresa ABC S.A. 2024 Derechos recervados</p></div>
	
</footer>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

<script >

	var $tabla1 = $('#tabla1')
	
	$(function(){
		$tabla1.bootstrapTable({
			sortReset : true
		})
	})
</script>
</body>
</html>