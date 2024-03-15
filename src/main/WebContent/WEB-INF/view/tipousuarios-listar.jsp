<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
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
<nav>	
</nav>

	<section class="py-5 px-5">
		<div class="container">	
				<h1> Tipos de usuario </h1>	
				<div class="container" style="text-align: center">
					<button class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos-webv1.0/tipousuarios/findOne?opcion=1';return false;">
						<i class="fa-solid fa-user-plus">
						<!-- agregar -->
						</i>				
				</button>
				
				</div> 
				
				<div class="table-responsive">
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
							
							<!-- <th data-field="idtipoUs" data-sortable="true">idtipoUs</th> -->
							<th data-field="Tipo de Usuario" data-sortable="true">tipodeUser</th>
							<th data-field="Descripción" data-sortable="true">descripcion</th>							
						    <th data-field="Acciones" data-sortable="true">Acciones</th>
							
							
							</tr>
				
				</thead>
				
				<tbody>
			
					<c:forEach var="item" items="${tipousuarios}">					
						<tr>																								
							<%-- <td>${item.idtipoUs}</td> --%>
							<td>${item.tipodeUser}</td>												
							<td>${item.descripcion}</td>							
						
							<td>						
								<div class="container-fluid btn-group" role="group">
									<button class="btn btn-success" onclick="window.location.href='/ismac-emprendimientos-webv1.0/tipousuarios/findOne?idtipoUs=${item.idtipoUs}&opcion=1'; return false;">
									 <i class="fa-solid fa-arrows-rotate"></i> <!-- <p> Actualizar </p> --></button>
									 <button class="btn btn-danger" onclick="window.location.href='/ismac-emprendimientos-webv1.0/tipousuarios/findOne?idtipoUs=${item.idtipoUs}&opcion=2'; return false;"> 
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

