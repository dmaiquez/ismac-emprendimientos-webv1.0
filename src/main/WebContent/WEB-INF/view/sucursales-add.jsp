<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1> Sucursales</h1>
	
<!-- 	<form action="add" method="POST" enctype="multipart/form-data" > -->
	<form action="add" method="POST" >
	
	 idSucursales
	 <input type="hidden" id="idSucursales" name="idSucursales" value="${sucursal.idSucursales}">
	 <br/><br/>
	 sucursal
	 <input type="text" id="sucursal" name="sucursal" value="${sucursal.sucursal}">
	 <br/><br/>
	 descripcion
	 <input type="text" id="descripcion" name="descripcion" value="${detalle.descripcion}">
	 <br/><br/>
	
	 Empresa
	 <select id="idEmpresa" name="idEmpresa">	 	
	 	<c:forEach var="item" items="${empresa}" >
	 		<option value="${item.idEmpresa}" ${perfil.empresa.idEmpresa == item.idEmpresa ? 'selected' : ''}>${item.nombreempresa} </option>
	 	</c:forEach>	 		 		 		 
	 </select>
	 <br/><br/>
	<button type="submit">Guardar</button>	
     <button type="button" onclick="window.location.href='/ismac-emprendimientos-web/sucursales/findAll'; return false;">Cancelar</button>
	
	
	</form>

</body>
</html>