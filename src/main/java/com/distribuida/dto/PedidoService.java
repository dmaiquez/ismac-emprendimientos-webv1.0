package com.distribuida.dto;

import java.util.Date;
import java.util.List;

import com.distribuida.entities.Pedido;

public interface PedidoService {
	public List<Pedido> findAll();
	
	public Pedido findOne(int id);
	
	public void add(int idPedido, String numPedido, Date fechapedido, int confirmacionPedido, Integer fk_idCliente,Integer fk_empresaproducto );
	
	public void up(int idPedido, String numPedido, Date fechapedido, int confirmacionPedido, Integer fk_idCliente,Integer fk_empresaproducto );
	
	public void del(int id);

	public List<Pedido> findAll(String busqueda);

	





}
