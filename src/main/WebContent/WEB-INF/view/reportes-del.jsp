<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<!-- <meta charset="ISO-8859-1"> -->
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
</head>
<body>

	<nav>
	<h1> EMPRENDIMIENTOS  </h1>
		<div class="lista">
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}">Home</a></ul>
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}/clientes/findAll">Clientes</a></ul>
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}/libros/findAll">Libros</a></ul>
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}/facturacion">Facturacion</a></ul>
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}/reportes">Reportes</a></ul>
		</div>	
	</nav>
	<section class="px-5 py-5">
	<h1>Borrar Reportes</h1>
	
	<form action="del" method="GET">
	<input type="hidden" id="idEmpresa" name="idEmpresa" value="${reporte.idReporte}">
	<strong>¿Desea eliminar el dato?</strong>
	<br/><br/>
	<div class="container-fluid form-group" role="group" style="text-align: left;">
				<button type="submit" class="btn btn-danger">Eliminar</button>
				<button type="button" class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos-web/reportes/findAll';return false;">Cancelar</button>
			</div>
	<button type="submit">Eliminar</button>
	<button type="button" onclick="window.location.href='/ismac-emprendimientos-web/reportes/findAll';return false;">Cancelar</button>
	</form>
	
	<footer>

	<div class="" style="text-align: center"><p>Copyright &copy; Empresa ABC S.A. 2024 Derchos recervados</p></div>
	
	</section>
</footer>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
</body>
</html>