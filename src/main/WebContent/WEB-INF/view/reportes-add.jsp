<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		 	
		 	<h1>Reportes</h1>
		<div class="container">
			<form action="add" method="POST" class="row g-3 needs-validation" novalidate>



	 <div class="form-group">
 		<label for="reporte" class="form-label"></label>
		 <input type="text" id="reporte" name="reporte" class="form-control" value="${reporte.reporte}" placeholder="Ingresar el frame del reporte">
  	</div>
 	<div class="form-group">
 			<label for="fechaReporte" class="form-label"></label>
 <input type="date" id="fechaReporte" class="form-control" name="fechaReporte" value="${fn:substring(reporte.fechaReporte,0,10)}">
	</div>
<div class="form-group">
 			<label for="descripcion" class="form-label"></label>
 <input type="text" id="descripcion" class="form-control" name="descripcion" value="${reporte.descripcion}" placeholder="agregue una descripcion">
</div>

<div class="container-fluid form-group" role="group" style="padding-top: 10px; text-align: right;">
		 <button type="submit" class="btn btn-primary">Guardar</button>
	 <button type="button" class="btn btn-danger" onclick="window.location.href='/ismac-emprendimientos-web/reportes/findAll';return false;">Cancelar</button>
	</div>

	</form>
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

	<script>
	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(() => {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation')

	  // Loop over them and prevent submission
	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }

	      form.classList.add('was-validated')
	    }, false)
	  })
	})()
	</script>
</body>
</html>