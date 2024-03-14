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

<section class="py-5 px-5">
		<div class="container">
			<h1> Agregar Usuarios </h1>
			
			<div class="container" style="text-align: center;">
				<button class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos1-web/loginuser/findOne?opcion=1'; return false;">
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
							<th data-field="Id" data-sortable="true" >id_user</th>
							<th data-field="Usuario" data-sortable="true" >user</th>
							<th data-field="Pasword" data-sortable="true">password</th>
							<th data-field="Neew Pasword" data-sortable="true">new_pasword</th>
							<th data-field="Confir Pasword" data-sortable="true">confirm_pasword</th>
							<th data-field="Login Correo" data-sortable="true">login_correo</th>
							<th data-field="Login Token" data-sortable="true">login_token</th>
							<th data-field="Time In" data-sortable="true">Session_time_In</th>
							<th data-field="Time Out" data-sortable="true">Session_time_OUT</th>
							<th data-field="Seccion Tiempo" data-sortable="true">Session_tiempo</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${loginuser}">
							<tr>
								
							 	<td>${item.id}</td> 
								<td>${item.user}</td>
								<td>${item.pasword}</td>
								<td>${item.new_pasword}</td>
								<td>${item.confirm_pasword}</td>
								<td>${item.login_correo}</td>
								<td>${item.login_token}</td>
								<td>${item.session_time_In}</td>
								<td>${item.session_time_OUT}</td>
								<td>${item.session_tiempo}</td>
								<td>
									<div class="container-fluid btn-group" role="group" >
										<button class="btn btn-success" onclick="window.location.href='/ismac-emprendimientos1-web/loginuser/findOne?id_user=${item.id}&opcion=1'; return false;">
											<i class="fa-solid fa-rotate-left">
											<!-- Actualizar -->
											</i>																			
										</button>
										<button class="btn btn-danger" onclick="window.location.href='/ismac-emprendimientos1-web/loginuser/findOne?id_user=${item.id}&opcion=2'; return false;">
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

