package com.distribuida.dto;

import java.util.List;

import com.distribuida.entities.Sucursales;



public interface SucursalesService {

	
	public List<Sucursales> finAll();
	
	public Sucursales finOne(int id);
	
	public void add(int idSucursales, String sucursal, String descripcion, int fk_idEmpresa);
	
	public void up(int idSucursales, String sucursal, String descripcion, int fk_idEmpresa);
	
	public void del(int id);
	
	public List<Sucursales> findAll(String busqueda);
}
