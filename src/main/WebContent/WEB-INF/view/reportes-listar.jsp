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

<nav class="navbar bg-light">
<h1> LIBRERIA  </h1>
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
	 <h1>Empresas</h1>
	 
	 <div class="container" style="text-align: right ;">
		<button class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos-web/reportes/findOne?opcion=1';return false;">
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
			
				<th data-field="N°" data-sortable="true">idReporte</th>
				<th data-field="Reporte" data-sortable="true">reporte</th>
				<th data-field="Fecha" data-sortable="true">fechaReporte</th>
				<th data-field="Descripcion" data-sortable="true">descripcion</th>
				<th data-field="Acciones" data-sortable="true">Acciones</th>
			
			</tr>
			
		</thead>
		<tbody>
			
			<c:forEach var="item" items="${reportes}">
			<tr>	
	
				<td>${item.idReporte}</td>
				<td>${item.reporte}</td>
				<td>${fn:substring(item.fechaReporte,0,10)}</td>
				<td>${item.descripcion}</td>
	
			
				<td>
		<div class="container-fluid btn-group" role="group">
			<button class="btn btn-success" onclick="window.location.href='/ismac-emprendimientos-web/reportes/findOne?idReporte=${item.idReporte}&opcion=1'">
			 <i class="fa-solid fa-arrows-rotate"></i> <!-- <p> Actualizar </p> --></button>
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

	<div class="" style="text-align: center"><p>Copyright &copy; Empresa ABC S.A. 2024 Derchos recervados</p></div>
	
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