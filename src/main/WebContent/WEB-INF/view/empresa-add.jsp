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
	<h1>Empresa</h1>
		
	<div class="container">
	<form action="add" method="POST" class="row g-3 needs-validation" novalidate>

 	
 	<input type="hidden" id="idEmpresa" name="idEmpresa" value="${empresa.idEmpresa}">
 
	 <div class="form-group">
 		<label for="QRPago" class="label-file">
            <i class="fas fa-upload"></i> Seleccionar Un logo para reprecentar tu empresa</label>
	 <input type="file" class="form-control"  id="QRPago" name="QRPago" value="${empresa.QRPago}" placeholder="Si es neesario ingresa una redireccion externa QR">
	 	<!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>
 	
 	<div class="form-group">
 	<label for="nombreempresa" class="form-label">Nombre Empresa</label>
 	<input type="text" class="form-control" id="nombreempresa" name="nombreempresa" value="${empresa.nombreempresa}" required>
 	<!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>
 	
 	<div class="form-group">
 	<label for="personaCargoEmpresa" class="form-label">Persona A Cargo</label>
 	<input type="text" id="personaCargoEmpresa" class="form-control" name="personaCargoEmpresa" value="${empresas.personaCargoEmpresa}" required>
 	<!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>

	<div class="form-group">
 	<label for="personaContacto" class="form-label">Contacto</label>
 	<input type="text" id="personaContacto" class="form-control" name="personaContacto" value="${empresa.personaContacto}" required>
 	<!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>
 	<div class="form-group">
 	<label for="telefono" class="form-label">Télefono</label>
 	<input type="text" id="telefono" class="form-control" name="telefono" value="${empresa.telefono}" required>
 	<!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>
 
 	<div class="form-group">
 	<label for="correo" class="form-label">Correo</label>
 	<input type="email" id="correo" name="correo" class="form-control" value="${empresa.correo}" required>
 	<!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>
 
 	<div class="form-group">
 	<label for="direccion" class="form-label">Dirección</label>
 	<input type="text" id="direccion" name="direccion" class="form-control" value="${empresa.direccion}" required>
	<!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>
 	
 	<div class="form-group">
 	<label for="FechaInicio" class="form-label">Fecha en la que inico el emprendimeinto</label>
 	<input type="date" id="FechaInicio" name="FechaInicio" class="form-control" value="${fn:substring(empresa.fechaInicio,0,10)}" placeholder="Fecha en la que inico el emprendimeinto">
 	<!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>
 	
 	<div class="form-group">
 	<label for="TipoEmpresa" class="form-label">Tipo Empresa</label>
 	<input type="text" id="TipoEmpresa" name="TipoEmpresa" class="form-control" value="${empresa.tipoEmpresa}">
 	<!-- <div class="invalid-feedback">
	 	* se hara un select
	 	</div> -->
 	</div>
 	
 	<div class="form-group">
 	<label for="HorariosAtencion" class="form-label">Horarios Atención</label>
 	<input type="text" id="HorariosAtencion" name="HorariosAtencion" class="form-control" value="${empresa.horariosAtencion}">
 	<!-- <div class="invalid-feedback">
	 	* formato ingreso
	 	</div> -->
 	</div>

 	
 	

 	
 	<div class="container-fluid form-group" role="group" style="padding-top: 10px; text-align: right;">
		 <button type="submit" class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos-web/perfilEmpresa/add';return false;">Guardar</button>
	 <button type="button" class="btn btn-danger" onclick="window.location.href='/ismac-emprendimientos-web/empresas/findAll';return false;">Cancelar</button>
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
	
	<script src="
		https://cdn.jsdelivr.net/npm/sweetalert2@11.10.6/dist/sweetalert2.all.min.js">
	</script>
</body>
</html>