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
<h1>Pedidos</h1>
	<form action="add" method="POST">
 ID Pedido
 <input type="hidden" id="idPedido" name="idPedido" value="${pedido.idPedido}"><br/><br/>
 Num Pedido
 <input type="text" id="numPedido" name="numPedido" value="${pedido.numPedido}"><br/><br/>
 Fecha Pedido
 <input type="date" id="fechapedido" name="fechapedido" value="${fn:substring(pedido.fechapedido,0,10)}">
<br/><br/>
 Confirmacion Pedido
 <input type="number" id="confirmacionPedido" name="confirmacionPedido" value="${pedido.confirmacionPedido}">
 <br/><br/>
 
 
  Cliente
  
	 <select id="idCliente" name="idCliente">	 	
	 	<c:forEach var="item" items="${clientes}" >
	 		<option value="${item.idCliente}" ${pedido.cliente.idCliente == item.idCliente ? 'selected' : ''}>${item.nombre} ${item.apellido}</option>
	 	</c:forEach>	 		 		 		 
	 </select>
<br><br>

 Productos
	 <select id="empresaproductos" name="empresaproductos">	 	
	 	<c:forEach var="item" items="${empresaproducto}" >
	 		<option value="${item.empresaproductos}" ${pedido.empresaproducto.empresaproductos == item.empresaproductos ? 'selected' : ''}>${item.producto}</option>
	 	</c:forEach>	 		 		 		 
	</select>
	 
	 
	 <br/><br/>
 
 <button type="submit">Guardar</button>
 <button type="button" onclick="window.location.href='/ismac-emprendimientos1-web/pedidos/findAll';return false;">Cancelar</button>
	</form>
    
</body>
</html>