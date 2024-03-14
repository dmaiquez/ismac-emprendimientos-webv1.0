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
		<title>Emprendimientos</title>
		<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
        <!-- <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.22.1/dist/bootstrap-table.min.css"> -->                
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
        <!-- <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.22.1/dist/bootstrap-table.min.css"> -->                
        
                <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
		<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        
		</head>
		<body>	


			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container px-4 px-lg-5">
					<a class="navbar-brand " href="${pageContext.request.contextPath}/">Emprendimientos</a>
						<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
									<li class="nav-item"><a class="nav-link " href="${pageContext.request.contextPath}/home/findAll">HOME</a></li>
									<li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath}/clientes/findAll">Clientes</a></li>
								
								</ul>
					<form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            	<i class="bi-cart-fill me-1"></i>
                           		 	Cart
                           	 	<span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
				</div>
			</div>
		</nav>
	
		<section class="py-5">
			<div class="container px-lg-5 ">
	
				<h1> Clientes </h1>
	
					<div class="container" style="text-align: center;">
						<a href="${pageContext.request.contextPath}/clientes/findOne?opcion=1"><button type="button" class="btn btn-primary" ><ion-icon name="add-circle">add</ion-icon></button></a>	
	
					</div>
	
	
	<div class="table-responsive">
	<table id="tabla1" 
		  		 name="tabla1" 
		  		 data-toggle="tabla1"  		 
			  	 data-height="600"
			     data-search="true"
			     data-toolbar=".toolbar"
			     data-pagination="true"	 	         
			     class="table table-striped table-sm"
			     >
		<thead>
			<tr>
				<!-- <th data-field="idCliente" data-sortable="true">idCliente</th> -->
				<th data-field="Cedula" data-sortable="true">cedula</th>
				<th data-field="Nombre" data-sortable="true">nombre</th>
				<th data-field="Apellido" data-sortable="true">apellido</th>
				<th data-field="Direccion" data-sortable="true">direccion</th>
				<th data-field="telefono" data-sortable="true">telefono</th>
				<th data-field="Correo" data-sortable="true">correo</th>
				<th data-field="Genero" data-sortable="true">genero</th>
				<th data-field="Fecha de Nacimiento" data-sortable="true">fechadenacimiento</th>
				<th data-field="Tipos de usuario" data-sortable="true">tipos_usuario</th>
				<th data-field="Acciones" data-sortable="true">Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${clientes}">
				<tr>
					<%-- <td>${item.idCliente}</td> --%>
					<td>${item.cedula}</td>
					<td>${item.nombre}</td>
					<td>${item.apellido}</td>
					<td>${item.direccion}</td>
					<td>${item.telefono}</td>
					<td>${item.correo}</td>
					<td>${item.genero}</td>					
					<td>${fn:substring(cliente.fechadenacimiento,0,10)}</td>
					<%-- <td>${item.tipoUsuario.tipodeUser}</td> --%>
					<td>
					<div class="container-fluid btn-group" role="group" aria-label="...">
							  <a href="${pageContext.request.contextPath}/clientes/findOne?idCliente=${item.idCliente}&opcion=1"><button type="button" class="btn btn-success" ><ion-icon name="pencil">edit</ion-icon></button></a>
							  <a href="${pageContext.request.contextPath}/clientes/findOne?idCliente=${item.idCliente}&opcion=2"><button type="button" class="btn btn-danger"  ><mat-icon color = "white"><ion-icon name="trash">delete</ion-icon></mat-icon></button></a>
					</div>
						</td>
				</tr>
			</c:forEach>			
		</tbody>
	</table>	
	</div>
	</div>	
	</section>
	
	<footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Empresa ABC S.A. 2023</p></div>
        </footer>
	
			<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	        <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
	        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>        
			<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		    <script>
		    var $table = $('#table2')
			
			  $(function() {
			    $table.bootstrapTable({
			      sortReset: true
			    })
			    
			  })
			  
			  
			    var $tabla1 = $('#tabla1')
			
				  $(function() {
				    $tabla1.bootstrapTable({
				      sortReset: true
				    })
				    
				  })
		    </script>
		    
</body>
</html>