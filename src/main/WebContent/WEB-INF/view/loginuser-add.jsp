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
	
</head>
<body>
	<section class="py-5 px-5">
		<div class="container" >
			<h1> Login User </h1>	
			<form action="add" method="POST" class="needs-validation" novalidate >				
				 <!-- idCliente -->
				   <div class="form-group">
				    <label for="id" class="form-label" >Id</label> 
				  <input type="hidden" id="id_user" name="id_user" value="${loginuser.id_user}"> 
				  <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				   </div>
				 
				 <div class="form-group">
					 <label for="usuario" class="form-label" >Usuario</label>					  
					 <input type="text" id="user" name="user" value="${loginuser.user}" required>
					 <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				 </div>
				 <div class="form-group">
					 <label for="contraseña:" class="form-label" >Contraseña:</label> 
					  <input type="text"  id=pasword name="pasword" value="${loginuser.pasword}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="nueva contraseña" class="form-label" >Nueva Contraseña</label> 
					 <input type="text"  id="new_pasword" name="new_pasword" value="${loginuser.new_pasword}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="confirme contraseña:" class="form-label" >Confirme Contraseña:</label> 
					  <input type="text"  id="confirm_pasword" name="confirm_pasword" value="${loginuser.confirm_pasword}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="correo:" class="form-label" > Correo:</label> 
					 <input type="email"  id="login_correo" name="login_correo" value="${loginuser.login_correo}" placeholder="example@empresaabc.com.ec" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="verificación:" class="form-label" >Verificación:</label> 
					 <input type="text" id="login_token" name="login_token" value="${loginuser.login_token}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>		
				 <div class="form-group">
					 <label for="tiempo de inicio de sección:" class="form-label" >Tiempo de inicio de sección::</label> 
					 <input type="date" id="session_time_In" name="session_time_In" value="${fn:substring(loginuser.session_time_In,0,10)}"required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for=" tiempo de cierre de sección:" class="form-label" > Tiempo de cierre de sección::</label> 
					 <input type="date" id="session_time_OUT" name="session_time_OUT" value="${fn:substring(loginuser.session_time_OUT,0,10)}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="tiempo de sección:" class="form-label" >Tiempo de sección::</label> 
					  <input type="text" id="session_tiempo" name="session_tiempo" value="${loginuser.session_tiempo}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>		 
				 <div class="container-fluid form-group" role="group" style="padding-top: 5px; text-align: right;">
					 <button type="submit" class="btn btn-primary">Guardar</button>	
					 <button type="button" class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos1-web/loginuser/findAll'; return false;">Cancelar</button>
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

