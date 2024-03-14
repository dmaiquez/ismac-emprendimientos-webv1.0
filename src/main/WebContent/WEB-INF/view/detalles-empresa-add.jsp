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

<h1> Detalles Empresa </h1>
	
<!-- 	<form action="add" method="POST" enctype="multipart/form-data" > -->
	<form action="add" method="POST" >
	
	 idDetalleEmpresa
	 <input type="hidden" id="idDetalleEmpresa" name="idDetalleEmpresa" value="${detalle.idDetalleEmpresa}">
	 <br/><br/>
	 encuestapopularidad
	 <input type="number" step="any" id="encuestapopularidad" name="encuestapopularidad" value="${detalle.encuestapopularidad}">
	 <br/><br/>
	 comentarios
	 <input type="text" id="comentarios" name="comentarios" value="${detalle.comentarios}">
	 <br/><br/>
	 chatUsuario
	 <input type="text" id="chatUsuario" name="chatUsuario" value="${detalle.chatUsuario}">
	 <br/><br/>
	 chatCliente
	 <input type="text" id="chatCliente" name="chatCliente" value="${detalle.chatCliente}">
	 <br/><br/>
	
	 Empresa
	 <select id="idEmpresa" name="idEmpresa">	 	
	 	<c:forEach var="item" items="${empresa}" >
	 		<option value="${item.idEmpresa}" ${perfil.empresa.idEmpresa == item.idEmpresa ? 'selected' : ''}>${item.nombreempresa} </option>
	 	</c:forEach>	 		 		 		 
	 </select>
	 <br/><br/>
	<button type="submit">Guardar</button>	
     <button type="button" onclick="window.location.href='/ismac-emprendimientos-web/perfilEmpresa/findAll'; return false;">Cancelar</button>
	
	
	</form>


	
</body>
</html>