<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

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
	<nav>
	</nav>

	<section class="py-5 px-5">
		<div class="container" >
			<h1> Usuarios </h1>	
			<form action="add" method="POST" class="needs-validation" novalidate >				
				 <!-- idCliente -->
				   <div class="form-group">
				    <!-- <label for="id" class="form-label" >Id</label> --> 
				    <input type="hidden" id="idUsuario" name="idUsuario" value="${usuario.idUsuario}"> 
				  <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				   </div>				 
				 <div class="form-group">
					 <label for="nombre" class="form-label" >Nombre</label>					  
					 <input type="text" class="form-control" id="nombre" name="nombre" value="${usuario.nombre}" required>
					 <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				 </div>
				 <div class="form-group">
					 <label for="apellido" class="form-label" >Usuario</label>					  
					 <input type="text" class="form-control" id="apellido" name="apellido" value="${usuario.apellido}" required>
					 <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				 </div>
				 <div class="form-group">
					 <label for="fechadenacimiento" class="form-label" >Fecha de Nacimiento</label>					  
					 <input type="date" class="form-control" id="fechadenacimiento" name="fechadenacimiento" value="${fn:substring(usuario.fechadenacimiento,0,10)}" required>
					 <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				 </div>
				 <div class="form-group">
					 <label for="cedula" class="form-label" >Cédula</label>					  
					 <input type="text" class="form-control" id="cedula" name="cedula" value="${usuario.cedula}" required>
					 <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				 </div>
				 <div class="form-group">
					 <label for="telefono" class="form-label" >Teléfono</label>					  
					 <input type="text" class="form-control" id="telefono" name="telefono" value="${usuario.telefono}" required>
					 <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				 </div>
				 <div class="form-group">
					 <label for="correo" class="form-label" >Correo</label>					  
					 <input type="email" class="form-control" id="correo" name="correo" value="${usuario.correo}" required>
					 <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				 </div>
				 <div class="form-group">
					 <label for="direccion" class="form-label" >direccion</label>					  
					 <input type="text" class="form-control" id="direccion" name="direccion" value="${usuario.direccion}" required>
					 <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				 </div>
				 <div class="form-group">
					 <label for="genero" class="form-label" >Género</label>					  
					 <input type="text" class="form-control" id="genero" name="genero" value="${usuario.genero}" required>
					 <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				 </div>

		 	 		  		 		 
			 	 
			 	 <label for="idtipoUs" class="form-label" >Tipo de Usuario</label>
				 <select class="form-select" id="idtipoUs" name="idtipoUs">	 	
				 	<c:forEach var="item" items="${tipousuarios}" >
				 	
				 		 	<option value="${item.idtipoUs}"  ${ item.idtipoUs == usuario.tipoUsuario.idtipoUs ? 'selected' : ''}>${item.tipodeUser}</option>
				 	 
				 	</c:forEach>	 		 		 		 
				 </select>
				 <br/><br/>

				 <div class="container-fluid form-group" role="group" style="padding-top: 5px; text-align: right;">
					 <button type="submit" class="btn btn-primary">Guardar</button>	
					 <button type="button" class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos-webv1.0/usuarios/findAll'; return false;">Cancelar</button>
				 </div>				 				 				 				 	 				 
			</form>	
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



















