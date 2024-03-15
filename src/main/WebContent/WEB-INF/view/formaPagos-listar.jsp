<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<header class="bg-dark text-white px-2 py-2">
			
			 <h1 style="text-align: center;">Plataforma de Emprendimientos Biz Bloom S.A.</h1>
			
		</header>
	<h1>FORMA PAGOS</h1>
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
		<h1>Formas Pago</h1>
	<div class="container" style="text-align: center;">
				<button class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos1-web/formaPagos/findOne?opcion=1'; return false;">
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
		<th data-field="N°" data-sortable="true">idFormaPago</th>
		<th data-field="formaspago" data-sortable="true">formaspago</th>				
		<th data-field="descripcion" data-sortable="true">descripcion</th>
		
		<th data-field="Acciones" data-sortable="true">Acciones</th>	
	</tr>
	</thead>
	<tbody>
	
		<c:forEach var="item" items="${formaPagos}">
	<tr>
		<td>${item.idFormaPago}</td>
		<td>${item.formaspago}</td>				
		<td>${item.descripcion}</td>
			
	<td>
		<div class="container-fluid btn-group" role="group" >
		<button class="btn btn-success" onclick="window.location.href='/ismac-emprendimientos1-web/formaPagos/findOne?idFormaPago=${item.idFormaPago}&opcion=1'; return false;">
		<i class="fa-solid fa-rotate-left">
		<!-- Actualizar -->
		</i>																			
	</button>
	<button class="btn btn-danger" onclick="window.location.href='/ismac-emprendimientos1-web/formaPagos/findOne?idFormaPago=${item.idFormaPago}&opcion=2'; return false;">
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
	</div>	
	</div>							
	</section>
</body>
</html>