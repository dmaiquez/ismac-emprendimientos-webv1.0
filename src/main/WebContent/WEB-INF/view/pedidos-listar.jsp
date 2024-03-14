<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- <meta charset="ISO-8859-1"> -->
	<meta charset="utf-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<h1>PEDIDOS</h1>
	<div class="lista">
		<ul style="display: inline;"><a href="${pageContext.request.contextPath}/"> HOME</a></ul>
		<ul style="display: inline;"><a href="${pageContext.request.contextPath}/clientes/findAll">Clientes</a></ul>
		<ul style="display: inline;"><a href="${pageContext.request.contextPath}/libros/findAll">Libros</a></ul>
		<ul style="display: inline"><a href="${pageContext.request.contextPath}/facturacion"> Facturacion</a></ul>
		<ul style="display: inline;"><a href="${pageContext.request.contextPath}/reportes"> Reportes</a></ul>
	</div>
	</nav>
	<br>
	
	<section class="py-5 px-5">
		<div class="container">
		<h1>Pedidos</h1>
	<div class="container" style="text-align: center;">
				<button class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos1-web/pedidos/findOne?opcion=1'; return false;">
					<i class="fa-solid fa-user-plus">></i>
				</button>
	</div>						
					
<div class="table-responsive">
				<table id="tabla1"
					   name="tabla1"
					   data-height="600"
					   data-search="true"
					   data-pagination="true"
					   data-toogle="tabla1"
					   data-toolbar=".toolbar"
					   class="table table-striped table-sm"
						>
						
	<thead>
	<tr>
		<th data-field="N°" data-sortable="true">idPedido</th>
		<th data-field="numPedido" data-sortable="true">numPedido</th>	
		<th data-field="fechapedido" data-sortable="true">fechapedido</th>	
		<th data-field="confirmacionPedido" data-sortable="true">confirmacionPedido</th>				
		<th data-field="nombre" data-sortable="true">nombre</th>
		<th data-field="empresaproducto" data-sortable="true">producto</th>
		
		<th data-field="Acciones" data-sortable="true">Acciones</th>	
	</tr>
	</thead>
	<tbody>
		<c:forEach var="item" items="${pedidos}">
				<tr>
				<td>${item.idPedido}</td>
				<td>${item.numPedido}</td>		
				<td>${fn:substring(item.fechapedido,0,10)}</td>
				<td>${item.confirmacionPedido}</td>
				<td>${item.cliente.nombre} ${item.cliente.apellido}</td>
				<td>${item.empresaproductos}</td>
				
		<td>
		<div class="container-fluid btn-group" role="group" >
		<button class="btn btn-success" onclick="window.location.href='/ismac-emprendimientos1-web/pedidos/findOne?idPedido=${item.idPedido}&opcion=1'; return false;">
		<i class="fa-solid fa-rotate-left">
		<!-- Actualizar -->
		</i>																			
	</button>
	<button class="btn btn-danger" onclick="window.location.href='/ismac-emprendimientos1-web/pedidos/findOne?idPedido=${item.idPedido}&opcion=2'; return false;">
	<i class="fa-solid fa-trash">
	<!-- Eliminar -->
	</i>											
	</button>
	</div>									
	</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
</body>
</html>