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
			<h1> Seccion </h1>
			
			<div class="container" style="text-align: center;">
				<button class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos1-web/secciones/findOne?opcion=1'; return false;">
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
						
			
						
							<th data-field="N°" data-sortable="true" >idSeccion</th>
							<th data-field="Seccion" data-sortable="true" >seccion</th>
							<th data-field="Descripcion" data-sortable="true">descripcion</th>
							
							<th data-field="Acciones" data-sortable="true">Acciones</th>
						</tr>
					</thead>
					<tbody>
					
					
						<c:forEach var="item" items="${secciones}">
							<tr>
								<td>${item.idSeccion}</td>
								<td>${item.seccion}</td>
								<td>${item.descripcion}</td>
								
								<td>
									<div class="container-fluid btn-group" role="group" >
										<button class="btn btn-success" onclick="window.location.href='/ismac-emprendimientos1-web/secciones/findOne?idSeccion=${item.idSeccion}&opcion=1'; return false;">
											<i class="fa-solid fa-rotate-left">
											<!-- Actualizar -->
											</i>																			
										</button>
										<button class="btn btn-danger" onclick="window.location.href='/ismac-emprendimientos1-web/secciones/findOne?idSeccion=${item.idSeccion}&opcion=2'; return false;">
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

	<footer>
		<div style="text-align: center"><p> Copyright &copy; Empresa ABC S.A. - 2024 Todos los derechos reservados.</p></div>
	</footer>

	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>		
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script>
		var $tabla1 = $('#tabla1')
		
			$(function(){
				$tabla1.bootstrapTable({
					sortReset: true
				})
			})
		
	</script>

</body>
</html>