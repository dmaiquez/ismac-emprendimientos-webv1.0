<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Gestión de Ventas - Libreria</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.22.1/dist/bootstrap-table.min.css">        
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.js" rel="stylesheet" />
		
		<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
		<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
				

		<div class="container px-4 px-lg-5">
		
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button><a class="navbar-brand " href="${pageContext.request.contextPath}/">Emprendimientos</a>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
				<li class="nav-item"><a class="nav-link "><a href="${pageContext.request.contextPath}/home/findAll">HOME</a></li>
				<li class="nav-item"><a class="nav-link active"><a href="${pageContext.request.contextPath}/clientes/findAll">Clientes</a></li>
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

	<div>
		<h1> Clientes </h1>
		
			<div class="table-responsive">
				<table class="table table-striped table-sm">
					<div class="">
						<form action="add" method="POST">
				
								 <input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}">
								 <br/><br/>
								 <div class="form-group" >
								 nombre
								 <input type="text" id="nombre" name="nombre" value="${cliente.nombre}">
								 </div>
								 <br/><br/>
								 <div class="form-group">
								 apellido
								 <input type="text" id="apellido" name="apellido" value="${cliente.apellido}">
								 </div>
								 <br/><br/>
								 <div class="form-group">
								 cedula
								 <input type="number" id="cedula" name="cedula" value="${cliente.cedula}">
								 </div>
								 <br/><br/>
								 <div class="form-group">
								 telefono
								 <input type="number" id="telefono" name="telefono" value="${cliente.telefono}">
								 </div>
								 <br/><br/>
								 <div class="form-group">
								 correo
								 <input type="email" id="correo" name="correo" value="${cliente.correo}">
								 </div>
								 <br/><br/>
								 <div class="form-group">
								 direccion
								 <input type="text" id="direccion" name="direccion" value="${cliente.direccion}">
								 </div>
								 <br/><br/>
								 <div class="form-group">
								 genero
								 <input type="text" id="genero" name="genero" value="${cliente.genero}">
								 </div>
								 <br/><br/>
								 <div class="form-group">
								 fechadenacimiento
								 <input type="date" id="fechadenacimiento" name="fechadenacimiento" value="${fn:substring(item.fechadenacimiento,0,10)}">
								 </div>
								 <br/><br/>	 
				 
				 	 		  		 	<div class="form-group">	 
									 	 TipoUsuario
										 <select id="idtipoUs" name="idtipoUs">	 	
										 	<c:forEach var="item" items="${tipousuarios}" >
										 		<option value="${item.idtipoUs}">${item.tipodeUser}</option>	
										 	</c:forEach>	 		 		 		 
									 </select>
									 <div/>
									 <br/><br/>
				 
								 <button type="submit">Guardar</button>	
								 <button type="button" onclick="window.location.href='/ismac-emprendimientos-web/clientes/findAll'; return false;">Cancelar</button>
							</form>
					</div>
				</table>	
			</div>		
	</div>
</section>

<!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Empresa ABC S.A. 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>        
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://unpkg.com/bootstrap-table@1.22.1/dist/bootstrap-table.min.js"></script>
		<!-- Latest compiled and minified Locales -->
		<script src="https://unpkg.com/bootstrap-table@1.22.1/dist/locale/bootstrap-table-zh-CN.min.js"></script>
		
</body>
</html>