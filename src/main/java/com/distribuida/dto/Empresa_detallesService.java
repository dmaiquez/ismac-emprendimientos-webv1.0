package com.distribuida.dto;

import java.util.List;

import com.distribuida.entities.Empresa_detalles;

public interface Empresa_detallesService {

	
public List<Empresa_detalles> finAll();
	
	public Empresa_detalles finOne(int id);
	
	public void add(int idDetalleEmpresa, double encuestapopularidad, String comentarios, String chatUsuario,
			String chatCliente, int fk_idEmpresa);
	
	public void up(int idDetalleEmpresa, double encuestapopularidad, String comentarios, String chatUsuario,
			String chatCliente, int fk_idEmpresa);
	
	public void del(int id);
	
	public List<Empresa_detalles> findAll(String busqueda);
}
