<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<header class="bg-dark text-white px-2 py-2">
			
			 <h1 style="text-align: center;">Plataforma de Emprendimientos Biz Bloom S.A.</h1>
			
		</header>

	<h1>Formas Pago</h1>
	<form action="add" method="POST">

		
 idFormaPago
 <input type="hidden" id="idFormaPago" name="idFormaPago" value="${formaPago.idFormaPago}">
 <br/><br/>
 formaspago
 <input type="text" id="formaspago" name="formaspago" value="${formaPago.formaspago}">
 <br/><br/>
 descripcion
 <input type="text" id="descripcion" name="descripcion" value="${formaPago.descripcion}">
 <br/><br/> <button type="submit">Guardar</button>
 <button type="button" onclick="window.location.href='/ismac-emprendimientos1-web/formaPagos/findAll';return false;">Cancelar</button>
	</form>

</body>
</html>