<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Empresas</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
    .empresa-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 20px;
    }
    .empresa-card {
        width: 100%;
    }
    .empresa-img {
        width: 200px;
        height: 150px;
        align: center;
    }
    .card{
    	align-items: center;
    }
</style>
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
        <h1>Empresas</h1>
        
        <!-- Barra de búsqueda -->
        <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="Buscar empresa por nombre o por Categoria" id="searchInput">
            <div class="input-group-append">
                <button class="btn btn-outline-secondary" type="button" id="searchButton"><i class="fas fa-search"></i></button>
            </div>
        </div>
        
        <!-- Menú desplegable de orden -->
        <div class="input-group mb-3">
            <select class="form-select" id="sortSelect">
                <option value="asc">Orden alfabético A - Z</option>
                <option value="desc">Orden alfabético Z - A</option>
            </select>
            <button class="btn btn-outline-secondary" type="button" id="clearFilterButton"><i class="fas fa-times"></i> Borrar filtro</button>
        </div>

        <div class="container" style="text-align: left;">
            <button class="btn btn-primary" onclick="window.location.href='/ismac-emprendimientos-webv1.0/empresas/findOne?opcion=1';return false;">
                <i class="fas fa-user-plus"></i> Agregar Empresa
            </button>
        </div>
		<br>
		<div class="empresa-container" id="empresaList">
            <c:forEach var="item" items="${empresas_logos}" varStatus="loop">
    <div class="empresa-card">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">${item.empresa.nombreempresa}</h5>
                <div class="card">
                    <img class="empresa-img" alt="" src="/ismac-emprendimientos-webv1.0/resources/img/${item.logo}">
                </div>
                <br>
                <h6 class="card-text">${item.empresa.tipoEmpresa}</h6>
      
                <p class="card-text">Fecha Inicio: ${fn:substring(item.empresa.fechaInicio,0,10)}</p>
                <div class="btn-group" role="group">
                    <a href="${pageContext.request.contextPath}/empresas/findOne?idEmpresa=${item.empresa.idEmpresa}&opcion=3" class="btn btn-primary" title="View" id="viewBtn${loop.index}">
                        <i class="fas fa-eye"></i> View
                    </a>
                </div>
            </div>
        </div>
    </div>
</c:forEach>

        </div>
    </div>
</section>

	<footer class="py-5 bg-light">
           <div class="container"><p class="m-0 text-center ">Copyright &copy; Plataforma de Emprendimientos Biz Bloom S.A. - 2024 - Todos los derechos reservados.</p></div>
    </footer>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

<script>
$(document).ready(function() {
    $('#searchInput').keyup(function() {
        var searchText = $(this).val().toLowerCase();
        $('#empresaList .empresa-card').each(function() {
            var empresaName = $(this).find('.card-title').text().toLowerCase();
            var personaCargo = $(this).find('.card-text').eq(0).text().toLowerCase();
            if (empresaName.indexOf(searchText) === -1 && personaCargo.indexOf(searchText) === -1) {
                $(this).hide();
            } else {
                $(this).show();
            }
        });
    });

    $('#sortSelect').change(function() {
        var sortOption = $(this).val();
        if (sortOption === 'asc') {
            sortCardsAlphabetically(true);
        } else if (sortOption === 'desc') {
            sortCardsAlphabetically(false);
        } else if (sortOption === 'recent') {
            sortCardsByRecent();
        } else {
            resetCardOrder();
        }
    });

    $('#clearFilterButton').click(function() {
        $('#searchInput').val('');
        $('#empresaList .empresa-card').show();
        resetCardOrder();
    });

    function sortCardsAlphabetically(ascending) {
        var sortedCards = $('#empresaList .empresa-card').sort(function(a, b) {
            var nameA = $(a).find('.card-title').text().toLowerCase();
            var nameB = $(b).find('.card-title').text().toLowerCase();
            return ascending ? nameA.localeCompare(nameB) : nameB.localeCompare(nameA);
        });
        $('#empresaList').empty().append(sortedCards);
    }
});

</script>

</body>
</html>
