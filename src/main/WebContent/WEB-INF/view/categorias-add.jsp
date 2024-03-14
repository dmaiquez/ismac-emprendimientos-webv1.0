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

	<nav>
		<h1> Emprendimientos </h1>
		<div class="lista">
			<ul style="display: inline;"><a href="${pageContext.request.contextPath}/"> HOME</a></ul>
			<ul style="display: inline;"><a href="${pageContext.request.contextPath}/categorias/findAll">Categorias</a></ul>
			<ul style="display: inline;"><a href="${pageContext.request.contextPath}/productos/findAll">Productos</a></ul>
			<ul style="display: inline"><a href="${pageContext.request.contextPath}/secciones/findAll"> Secciones</a></ul>
			<ul style="display: inline;"><a href="${pageContext.request.contextPath}/reportes/findAll"> Reportes</a></ul>
		</div>
	</nav>




	<section class="py-5 px-5">
	<div class="container" >
	</div>
			<form action="add" method="POST" class="needs-validation" novalidate >				
				 <!-- idSeccion -->
				 <input type="hidden" id="idCategoria" name="idCategoria" value="${categoria.idCategoria}">
				 <br/><br/>
				 <div class="form-group">
					 <label for="categoria" class="form-label" >categoria</label>					  
					 <input type="text" class="form-control" id="categoria" name="categoria" value="${categoria.categoria}" required>
					 <!-- <span class="invalid-feedback">
				      *
				     </span> -->
				 </div>
				 <div class="form-group">
					 <label for="descripcion" class="form-label" >descripcion</label> 
					 <input type="text" class="form-control" id="descripcion" name="descripcion" value="${categoria.descripcion}" required>
					 <!-- <div class="invalid-feedback">
				      *
				     </div> -->
				 </div>
				 
				 	
				 	 Seccion
	 	 <select class="form-select" id="idSeccion" name="idSeccion">
	 	<c:forEach var="item" items="${secciones}">
	 		 	<option value="${item.idSeccion}"  ${categoria.seccion.idSeccion == item.idSeccion ? 'selected' : ''}>${item.seccion}</option>
	 	
	 	</c:forEach>
	 </select>
  <br/><br/>	
		
				 
				 
				 </div>				 
				 <div class="container-fluid form-group" role="group" style="padding-top: 5px; text-align: right;">
					 <button type="submit" class="btn btn-primary">Guardar</button>	
					 <button type="button" class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos1-web/categorias/findAll'; return false;">Cancelar</button>
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