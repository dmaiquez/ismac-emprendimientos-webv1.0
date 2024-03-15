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
		<div class="container" >
			<h1> Cuentas de Usuarios </h1>	
			<form action="add" method="POST" class="needs-validation" novalidate >				
				 <!-- idCliente -->
				   <div class="form-group">
				    <!-- <label for="id" class="form-label" >Id</label> --> 
				    <input type="hidden" id="id_user" name="id_user" value="${loginuser.id_user}"> 
				  <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				   </div>
				 
				 <div class="form-group">
					 <label for="user" class="form-label" >Usuario</label>					  
					 <input type="text" class="form-control" id="user" name="user" value="${loginuser.user}" required>
					 <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				 </div>
				 <div class="form-group">
					 <label for="pasword" class="form-label" >Contraseña</label> 
					  <input type="password" class="form-control"  id="pasword" name="pasword" value="${loginuser.pasword}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="new_pasword" class="form-label" >Nueva Contraseña</label> 
					 <input type="password" class="form-control"  id="new_pasword" name="new_pasword" value="${loginuser.new_pasword}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="confirm_pasword" class="form-label" >Confirme Contraseña</label> 
					  <input type="password" class="form-control"  id="confirm_pasword" name="confirm_pasword" value="${loginuser.confirm_pasword}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="login_correo" class="form-label" > Correo</label> 
					 <input type="email" class="form-control"  id="login_correo" name="login_correo" value="${loginuser.login_correo}" placeholder="example@empresaabc.com.ec" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="login_token" class="form-label" >Verificación</label> 
					 <input type="text" class="form-control" id="login_token" name="login_token" value="${loginuser.login_token}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>		
				 <div class="form-group">
					 <label for="session_time_In" class="form-label" >Tiempo de inicio de sección</label> 
					 <input type="date" class="form-control" id="session_time_In" name="session_time_In" value="${fn:substring(loginuser.session_time_In,0,10)}"required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="session_time_OUT" class="form-label" > Tiempo de cierre de sección</label> 
					 <input type="date" class="form-control" id="session_time_OUT" name="session_time_OUT" value="${fn:substring(loginuser.session_time_OUT,0,10)}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 <div class="form-group">
					 <label for="session_tiempo" class="form-label" >Tiempo de sección</label> 
					  <input type="number" step="any" class="form-control" id="session_tiempo" name="session_tiempo" value="${loginuser.session_tiempo}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>		 
				 <div class="container-fluid form-group" role="group" style="padding-top: 5px; text-align: right;">
					 <button type="submit" class="btn btn-primary">Guardar</button>	
					 <button type="button" class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos-webv1.0/loginuser/findAll'; return false;">Cancelar</button>
				 </div>				 				 				 				 	 				 
			</form>	
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

