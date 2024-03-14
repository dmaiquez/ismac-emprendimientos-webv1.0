4<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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

	<h1>Usuario </h1>
	
	<form action="add" method="POST" >
		
		 idUsuario
		 <input type="hidden" id="idUsuario" name="idUsuario" value="${usuario.idUsuario}">
		 <br/><br/>
		 nombre
		 <input type="text" id="nombre" name="nombre" value="${usuario.nombre}">
		 <br/><br/>
		 apellido
		 <input type="text" id="apellido" name="apellido" value="${usuario.apellido}">
		 <br/><br/>
		  fechadenacimiento
		 <input type="date" id="fechadenacimiento" name="fechadenacimiento" value="${fn:substring(usuario.fechadenacimiento,0,10)}">
		 <br/><br/>	
		 cedula
		 <input type="text" id="cedula" name="cedula" value="${usuario.cedula}">
		 <br/><br/>
		 telefono
		 <input type="text" id="telefono" name="telefono" value="${usuario.telefono}">
		 <br/><br/>
		 correo
		 <input type="email" id="correo" name="correo" value="${usuario.correo}">
		 <br/><br/>
		 direccion
		 <input type="text" id="direccion" name="direccion" value="${usuario.direccion}">
		 <br/><br/>
		 genero
		 <input type="text" id="genero" name="genero" value="${usuario.genero}">
		 <br/><br/>
		 
		 
		 	 		  		 		 
		 	 TipoUsuario
			 <select id="idtipoUs" name="idtipoUs">	 	
			 	<c:forEach var="item" items="${tipousuarios}" >
			 	
			 		 	<option value="${item.idtipoUs}">${item.tipodeUser}</option>
			 	 
			 	</c:forEach>	 		 		 		 
			 </select>
			 <br/><br/>
		 
		 <button type="submit">Guardar</button>	
		 <button type="button" onclick="window.location.href='/ismac-emprendimientos1-web/usuario/findAll'; return false;">Cancelar</button>
	</form>

</body>
</html>