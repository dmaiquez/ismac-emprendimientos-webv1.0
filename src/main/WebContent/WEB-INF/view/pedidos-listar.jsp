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
<header class="bg-dark text-white px-2 py-2">
			
			 <h1 style="text-align: center;">Plataforma de Emprendimientos Biz Bloom S.A.</h1>
			
		</header>
<nav>	
</nav>

	<section class="py-5 px-5">
		<div class="container">	
				<h1> Pedidos </h1>	
				<!-- <div class="container" style="text-align: center">
					<button class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos-webv1.0/loginclientes/findOne?opcion=1';return false;">
						<i class="fa-solid fa-user-plus">
						agregar
						</i>				
					</button>
				
				</div> --> 
				
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
								<!-- <th data-field="idPedido" data-sortable="true">idPedido</th> -->
								<th data-field="N° Pedido" data-sortable="true">numPedido</th>
								<th data-field="Fecha de Pedido" data-sortable="true">fechapedido</th>
								<th data-field="confirmacionPedido" data-sortable="true">confirmacionPedido</th>
								<!-- <th data-field="Cliente" data-sortable="true">cliente</th>
								<th data-field="Empresa_producto" data-sortable="true">empresaproductos</th> -->														
							</tr>
				
				</thead>
				
				<tbody>
			
					<c:forEach var="item" items="${pedidos}">					
						<tr>																								
							<%-- <td>${item.idPedido}</td> --%>
							<td>${item.numPedido}</td>
							<td>${fn:substring(item.fechapedido,0,10)}</td>
							<td>${item.confirmacionPedido}</td>
							<%-- <td>${item.cliente}</td>
							<td>${item.empresaproductos}</td> --%>
							<%-- <td>						
								<div class="container-fluid btn-group" role="group">
									<button class="btn btn-success" onclick="window.location.href='/ismac-emprendimientos-webv1.0/loginclientes/findOne?id=${item.id}&opcion=1'">
									 <i class="fa-solid fa-arrows-rotate"></i> <!-- <p> Actualizar </p> --></button>
									<button class="btn btn-danger" onclick="window.location.href='/ismac-emprendimientos-webv1.0/loginclientes/findOne?id=${item.id}&opcion=2'"> 
									<i class="fa-solid fa-trash"></i><!--<p> Eliminar </p> --></button>
								</div>					
							</td> --%>			
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