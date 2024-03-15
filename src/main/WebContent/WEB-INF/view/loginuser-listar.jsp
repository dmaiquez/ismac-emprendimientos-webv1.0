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

<header class="bg-dark text-white px-2 py-2">
			
			 <h1 style="text-align: center;">Plataforma de Emprendimientos Biz Bloom S.A.</h1>
			
		</header>

 <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid ">
    <a class="navbar-brand active" href="${pageContext.request.contextPath}/">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  
        <li class="nav-item">        
          <a class="nav-link " aria-current="page" href="${pageContext.request.contextPath}/usuarios/findAll">
	          <i class="fa-solid fa-user">U</i> <!-- usuario -->         
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/tipousuarios/findAll">
          <i class="fa-solid fa-user">T</i>
          <!-- 	Tipos de Usuarios -->
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/clientes/findAll">
          <i class="fa-regular fa-user">C</i><!-- Clientes -->
          </a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/secciones/findAll">
          <i class="fa-sharp fa-solid fa-apple-whole">S</i> <!-- Secciones -->
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/categorias/findAll">
          <i class="fa-sharp fa-solid fa-apple-whole">C</i> <!-- Categorias -->
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/productos/findAll">
          <i class="fa-sharp fa-solid fa-apple-whole">P</i> <!-- Productos -->
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/sucursales/findAll">
          <i class="fa-solid fa-house">S</i><!-- Sucursales -->
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/empresas/findAll">
          <i class="fa-solid fa-house">E</i><!-- Empresas -->
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/facturacion/principal">
           <i class="fa-solid fa-cart-shopping">F</i><!-- Facturacion -->
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/loginuser/findAll">
          <i class="fa-solid fa-user-check">LU</i><!-- Login User -->
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/loginclientes/findAll">
          <i class="fa-solid fa-user-check">LC</i><!-- Login User --><!-- Login Cliente -->
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/reportes/">
          <i class="fa-solid fa-chart-line">R</i><!-- Reportes -->
          </a>
        </li>
        
        
                       
      </ul>
      
    </div>
   </div>
  </nav>


<section class="py-5 px-5">
		<div class="container">
		
			<h1> Cuentas de Usuarios </h1>
			
			<div class="container" style="text-align: center;">
				<button class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos-webv1.0/loginuser/findOne?opcion=1'; return false;">
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
							<!-- <th data-field="Id" data-sortable="true" >id_user</th> -->
							<th data-field="Usuario" data-sortable="true" >user</th>
							<th data-field="Pasword" data-sortable="true">password</th>
							<th data-field="Nuevo Pasword" data-sortable="true">new_pasword</th>
							<th data-field="Confirmar Pasword" data-sortable="true">confirm_pasword</th>
							<th data-field="Login por Correo" data-sortable="true">login_correo</th>
							<th data-field="Login por Token" data-sortable="true">login_token</th>
							<th data-field="Time In" data-sortable="true">Session_time_In</th>
							<th data-field="Time Out" data-sortable="true">Session_time_OUT</th>
							<th data-field="Seccion Tiempo" data-sortable="true">Session_tiempo</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${loginuser}">
							<tr>
								
							 	<%-- <td>${item.id_user}</td> --%> 
								<td>${item.user}</td>
								<td><input type="password" value="${item.pasword}" disabled="disabled"></td>
								<td><input type="password" value="${item.new_pasword}" disabled="disabled"></td>
								<td><input type="password" value="${item.confirm_pasword}" disabled="disabled"></td>
								<td>"${item.login_correo}"</td>
								<td>${item.login_token}</td>
								<td>${fn:substring(item.session_time_In,0,10)}</td>
								<td>${fn:substring(item.session_time_OUT,0,10)}</td>
								<td>${item.session_tiempo}</td>
								<td>
									<div class="container-fluid btn-group" role="group" >
										<button class="btn btn-success" onclick="window.location.href='/ismac-emprendimientos-webv1.0/loginuser/findOne?id_user=${item.id_user}&opcion=1'; return false;">
											<i class="fa-solid fa-rotate-left">
											<!-- Actualizar -->
											</i>																			
										</button>
										<button class="btn btn-danger" onclick="window.location.href='/ismac-emprendimientos-webv1.0/loginuser/findOne?id_user=${item.id_user}&opcion=2'; return false;">
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
	
	<footer class="py-5 bg-light">
           <div class="container"><p class="m-0 text-center ">Copyright &copy; Plataforma de Emprendimientos Biz Bloom S.A. - 2024 - Todos los derechos reservados.</p></div>
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

