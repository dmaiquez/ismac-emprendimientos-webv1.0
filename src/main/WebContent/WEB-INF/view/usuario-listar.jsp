<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
<!-- <meta charset="ISO-8859-1"> -->
<title>Insert title here</title>

     <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.22.1/dist/bootstrap-table.min.css">        
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.js" rel="stylesheet" />
        
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
		<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        

</head>
<body>

<nav class="navbar bg-light">
<h1> EMPRENDIMIENTOS </h1>
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
           
           <h1> Usuario </h1>
           
          <div class="container " style="text-align: center;"> 
						<a href="${pageContext.request.contextPath}/usuario/findOne?opcion=1"><button type="button" class="btn btn-primary" ><ion-icon name="add-circle">add</ion-icon></button></a>					        					                   
					</div>
          
	
	<div class="table-responsive">
	<table id="tabla1" 
			name="tabla1"
			data-height="600"
			data-search="true"
			data-pagination="true"
			data-toogle="tabla1"
			data-tollbar=".toolbar"
			class="table table-striped table-sm">
		<thead>
			<tr>
				<th data-field="idusuario" data-sortable="true">idUsuario</th>
				<th data-field="cedula" data-sortable="true">cedula</th>
				<th data-field="nombre" data-sortable="true">nombre</th>
				<th data-field="apellido" data-sortable="true">apellido</th>
				<th data-field="fechadenacimiento" data-sortable="true">fechadenacimiento</th>
				<th data-field="direccion" data-sortable="true">direccion</th>
				<th data-field="telefono" data-sortable="true">telefono</th>
				<th data-field="correo" data-sortable="true">correo</th>
				<th data-field="genero" data-sortable="true">genero</th>
				
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${usuario}">
				<tr>
				<td>${item.idUsuario}</td>
					<td>${item.cedula}</td>
					<td>${item.nombre}</td>
					<td>${item.apellido}</td>
					<td>${fn:substring(item.fechadenacimiento,0,10)}</td>
					<td>${item.direccion}</td>
					<td>${item.telefono}</td>
					<td>${item.correo}</td>
					<td>${item.genero}</td>
					
					
					<td>
					<div class="container-fluid btn-group" role="group" aria-label="...">	          	 	          				              				              				              
				              <a href="${pageContext.request.contextPath}/usuario/findOne?idUsuario=${item.idUsuario}&opcion=1"><button type="button" class="btn btn-success" ><ion-icon name="pencil">edit</ion-icon></button></a>
							  <a href="${pageContext.request.contextPath}/usuario/findOne?idUsuario=${item.idUsuario}&opcion=2"><button type="button" class="btn btn-danger"  ><mat-icon color = "white"><ion-icon name="trash">delete</ion-icon></mat-icon></button></a>				              
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