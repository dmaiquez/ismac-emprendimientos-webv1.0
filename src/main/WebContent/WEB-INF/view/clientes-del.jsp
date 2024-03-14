<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Gestión de Ventas - Libreria</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.22.1/dist/bootstrap-table.min.css">        
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.js" rel="stylesheet" />
        
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
		<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
      </head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
		<a class="navbar-brand " href="${pageContext.request.contextPath}/">Emprendimientos</a>
		<h1>   Clientes   </h1>
		<div class="lista">
			<li style="display: inline;"><a href="${pageContext.request.contextPath}/">HOME</a></ul>
			<li style="display: inline;"><a href="${pageContext.request.contextPath}/clientes/findAll">Clientes</a></li>
			<li style="display: inline;"><a href="${pageContext.request.contextPath}/libros/findAll">Libros</a></li>

		
		</div>
		</div>
		
		
		</nav>


<section>

<h1> Clientes </h1>
  
  <form action="del" method="GET">
  	<input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}" >
  	<strong>¿Desea eliminar el dato?</strong>
  	<br/><br/>
  	<button type="submit">Guardar</button>
 	<button type="button" onclick="window.location.href='/ismac-emprendimientos-web/clientes/findAll';return false;">Cancelar</button>
  </form>

</section>

  
  
  	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
  
</body>
</html>