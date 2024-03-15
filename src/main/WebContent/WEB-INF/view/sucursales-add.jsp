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
	<h1>Sucursales</h1>
	
<!-- 	<form action="add" method="POST" enctype="multipart/form-data" > -->
	<form action="add" method="POST" class="row g-3 needs-validation" novalidate>
	
	 <input type="hidden" id="idSucursales" name="idSucursales" value="${sucursal.idSucursales}">

	 <div class="form-group">
    <label for="sucursal">
        <i class="fas fa-upload"></i> Agregas una sucursal
    </label>
	 <input type="text" id="sucursal" name="sucursal"  class="form-control" value="${sucursal.sucursal}" required placeholder="Nombre y dirección">
	 <!-- <div class="invalid-feedback">
        *
    </div> -->
	</div>
	
	<div class="form-group">
    <label for="descripcion">
        <i class="fas fa-upload"></i> Agrega Una descripcion
    </label>
	 <input type="text" id="descripcion" name="descripcion" class="form-control" value="${sucursal.descripcion}" required>
	  <!-- <div class="invalid-feedback">
        *
    </div> -->
	</div>
	
	
	 <div class="form-group">
    <label for="descripcion">
        <i class="fas fa-upload"></i> Seleccionar Tu empresa
    </label>
	 <select id="idEmpresa" name="idEmpresa">	 	
	 	<c:forEach var="item" items="${empresa}" >
	 		<option value="${item.idEmpresa}" ${perfil.empresa.idEmpresa == item.idEmpresa ? 'selected' : ''}>${item.nombreempresa} </option>
	 	</c:forEach>	 		 		 		 
	 </select>
	   <!-- <div class="invalid-feedback">
        *
    </div> -->
	</div>
	 <br/><br/>

	 	
	<div class="container-fluid form-group" role="group" style="padding-top: 10px; text-align: right;">
    <button type="submit" class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos-webv1.0/empresas/findAll';return false;">Guardar</button>
    <button type="button" class="btn btn-danger" onclick="window.history.back();">Cancelar</button>
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