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

<nav class="navbar bg-light">
<h1> Emprendimientos  </h1>
	<div class="lista">
		<ul style="display: inline"><a  href="${pageContext.request.contextPath}">Home</a></ul>
		<ul style="display: inline"><a  href="${pageContext.request.contextPath}/productos/findAll">Productos</a></ul>
		<ul style="display: inline"><a  href="${pageContext.request.contextPath}/empresas/findAll">Empresas</a></ul>
	</div>	
</nav>

<section class="py-5 px-5">
    <div class="container">
        <h1>Empresas</h1>
        
        <div class="container" style="text-align: left;">
            <button class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos-web/empresas/findOne?opcion=1';return false;">
                <i class="fa-solid fa-user-plus"></i>
            </button>
        </div>

        <div class="row row-cols-1 row-cols-md-3 g-4">
            <c:forEach var="item" items="${empresas_logos}">
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">${item.empresa.nombreempresa}</h5>
                            
                            <p class="card-text">Persona a cargo: ${item.empresa.personaCargoEmpresa}</p>
                            <p class="card-text">Contacto: ${item.empresa.personaContacto}</p>
                            <!-- Agrega aquí los demás campos que deseas mostrar -->
                         
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<footer>

	<div class="" style="text-align: center"><p>Copyright &copy; Platform Emprendimientos 2024 Derchos recervados</p></div>
	
</footer>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

<script >

	var $tabla1 = $('#tabla1')
	
	$(function(){
		$tabla1.bootstrapTable({
			sortReset : true
		})
	})
</script>
	
</body>
</html>