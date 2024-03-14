<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
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

	<nav>
		<h1> Emprendimientos </h1>
		<div class="lista">
			<ul style="display: inline;"><a href="${pageContext.request.contextPath}/"> HOME</a></ul>
			<ul style="display: inline;"><a href="${pageContext.request.contextPath}/categorias/findAll">Categorias</a></ul>
			<ul style="display: inline;"><a href="${pageContext.request.contextPath}/productos/findAll">Productos</a></ul>
			<ul style="display: inline"><a href="${pageContext.request.contextPath}/secciones/findAll"> Secciones</a></ul>
			<ul style="display: inline;"><a href="${pageContext.request.contextPath}/reportes/findAll"> Reportes</a></ul>
		</div>
	</nav>


		
	<section class="py-5 px-5">
		<div class="container">
			<h1> Productos </h1>
			
			<div class="container" style="text-align: center;">
				<button class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos1-web/productos/findOne?opcion=1'; return false;">
					<i class="fa-solid fa-user-plus">
					<!-- Agregar -->
					</i>																
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
						
						
									
							<th data-field="N°" data-sortable="true" >idProducto</th>
							<th data-field="numeroProducto" data-sortable="true" >numeroProducto</th>
							<th data-field="descripcion" data-sortable="true">descripcion</th>
							<th data-field="precioProducto" data-sortable="true">precioProducto</th>
							<th data-field="stock" data-sortable="true">stock</th>
							<th data-field="imgProducto" data-sortable="true">imgProducto</th>
				
								<th data-field="Categorias" data-sortable="true">Categorias</th>
							
							<th data-field="Acciones" data-sortable="true">Acciones</th>
						</tr>
					</thead>
					<tbody>
					
			
						<c:forEach var="item" items="${productos}">
							<tr>
								<td>${item.idProducto}</td>
								<td>${item.numeroProducto}</td>
								<td>${item.descripcion}</td>
								<td>${item.precioProducto}</td>
								<td>${item.stock}</td>
								<td><img width="100" height="100" src="${pageContext.request.contextPath}/resources/img/${item.imgProducto}"/></td>		
								<td>${item.categoria.categoria}</td>		
								
								
								<td>
									<div class="container-fluid btn-group" role="group" >
										<button class="btn btn-success" onclick="window.location.href='/ismac-emprendimientos1-web/productos/findOne?idProducto=${item.idProducto}&opcion=1'; return false;">
											<i class="fa-solid fa-rotate-left">
											<!-- Actualizar -->
											</i>																			
										</button>
										<button class="btn btn-danger" onclick="window.location.href='/ismac-emprendimientos1-web/productos/findOne?idProducto=${item.idProducto}&opcion=2'; return false;">
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