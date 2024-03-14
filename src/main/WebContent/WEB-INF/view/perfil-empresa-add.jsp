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
	<h1> EMPRESAS </h1>

		<div class="lista">
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}">Home</a></ul>
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}/clientes/findAll">Clientes</a></ul>
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}/libros/findAll">Libros</a></ul>
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}/facturacion">Facturacion</a></ul>
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}/reportes">Reportes</a></ul>
		</div>	
	</nav>
	
	<section class="py-5 px-5">
	<h1>Perfil Empresa</h1>
	
<div class="container">
	<form action="add" method="POST" class="row g-3 needs-validation" novalidate>
	
	 


	 <input type="hidden" id="idPerfilEmpresa" name="idPerfilEmpresa" value="${perfil.idPerfilEmpresa}">
	 <br/><br/>


	 <div class="form-group">
	 <label for="logo" class="label-file">
            <i class="fas fa-upload"></i> Seleccionar Un logo para reprecentar tu empresa</label>
	 <input type="file" id="logo" class="form-control" name="logo" value="${perfil.logo}">
	 <!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>

	
	<div class="form-group">
	  <input type="color" id="opcColor1" name="opcColor1" class="form-control" onchange="updateColor() value="${perfil.opcColor1}">
	<!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>

	 <div class="form-group">
	  <input type="color" id="opcColor2" name="opcColor2" class="form-control" onchange="updateColor() value="${perfil.opcColor2}">
	 <!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>
<div class="form-group">
<label>Escoje tu empresa	</label>
	 <select id="idEmpresa" name="idEmpresa">	 	
	 	<c:forEach var="item" items="${empresa}" >
	 		<option value="${item.idEmpresa}" ${perfil.empresa.idEmpresa == item.idEmpresa ? 'selected' : ''}>${item.nombreempresa} </option>
	 	</c:forEach>	 		 		 		 
	 </select>
	  <!-- 	<div class="invalid-feedback">
				      *
		</div> -->
 	</div>
	 	
	<div class="container-fluid form-group" role="group" style="padding-top: 10px; text-align: right;">
		 <button type="submit" class="btn btn-primary">Guardar</button>
	 <button type="button" class="btn btn-danger" onclick="window.location.href='/ismac-emprendimientos-web/perfilEmpresa/findAll'; return false;">Cancelar</button>
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
	
	 <script>
        function updateColor() {
            // Obtén el valor del input de color
            var colorInput = document.getElementById('colorInput');
            var selectedColor = colorInput.value;

            // Convierte el valor HEX a RGB
            var rgbValue = hexToRgb(selectedColor);

            // Muestra el valor RGB en la página
            document.getElementById('rgbValue').textContent = 'RGB(' + rgbValue.r + ', ' + rgbValue.g + ', ' + rgbValue.b + ')';
        }

        function hexToRgb(hex) {
            // Elimina el símbolo '#' si está presente
            hex = hex.replace(/^#/, '');

            // Convierte los valores hexadecimales a decimales
            var bigint = parseInt(hex, 16);

            // Extrae los componentes de color RGB
            var r = (bigint >> 16) & 255;
            var g = (bigint >> 8) & 255;
            var b = bigint & 255;

            // Devuelve un objeto con los valores RGB
            return { r: r, g: g, b: b };
        }
    </script>
</body>
</html>