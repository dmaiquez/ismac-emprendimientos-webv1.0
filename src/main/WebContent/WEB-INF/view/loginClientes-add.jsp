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

	<nav>
	</nav>

	<section class="py-5 px-5">
		<div class="container" >
				
			<h1> Cuentas de clientes </h1>
		
			<form action="add" method="POST" class="needs-validation" novalidate >				
				 <!-- idCliente -->
				   <div class="form-group">
				    <!-- <label for="id" class="form-label" >Id</label> --> 
				    <input type="hidden" id="id" name="id" value="${logincliente.id}"> 
				  <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				   </div>
				 
				 <div class="form-group">
					 <label for="user" class="form-label" >Usuario</label>					  
					 <input type="text" class="form-control" id="user" name="user" value="${logincliente.user}" required>
					 <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				 </div>
				 <div class="form-group">
					 <label for="password" class="form-label" >Contraseña</label> 
					  <input type="password" class="form-control"  id="password" name="password" value="${logincliente.password}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="newpassword" class="form-label" >Nueva Contraseña</label> 
					 <input type="password" class="form-control"  id="newpassword" name="newpassword" value="${logincliente.newpassword}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="confirmpassword" class="form-label" >Confirme Contraseña</label> 
					  <input type="password" class="form-control"  id="confirmpassword" name="confirmpassword" value="${logincliente.confirmpassword}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="loginCorreo" class="form-label" > Correo</label> 
					 <input type="email" class="form-control"  id="loginCorreo" name="loginCorreo" value="${logincliente.loginCorreo}" placeholder="example@empresaabc.com.ec" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="loginToken" class="form-label" >Verificación</label> 
					 <input type="text" class="form-control" id="loginToken" name="loginToken" value="${logincliente.loginToken}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>		
				 <div class="form-group">
					 <label for="sessiontimeIn" class="form-label" >Tiempo de inicio de sección</label> 
					 <input type="date" class="form-control" id="sessiontimeIn" name="sessiontimeIn" value="${fn:substring(logincliente.sessiontimeIn,0,10)}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="sessiontimeOUT" class="form-label" > Tiempo de cierre de sección</label> 
					 <input type="date" class="form-control" id="sessiontimeOUT" name="sessiontimeOUT" value="${fn:substring(logincliente.sessiontimeOUT,0,10)}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="sessiontiempo" class="form-label" >Tiempo de sección</label> 
					  <input type="number" step="any" class="form-control" id="sessiontiempo" name="sessiontiempo" value="${logincliente.sessiontiempo}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>		 
				 <div class="container-fluid form-group" role="group" style="padding-top: 5px; text-align: right;">
					 <button type="submit" class="btn btn-primary">Guardar</button>	
					 <button type="button" class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos-webv1.0/loginclientes/findAll'; return false;">Cancelar</button>
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