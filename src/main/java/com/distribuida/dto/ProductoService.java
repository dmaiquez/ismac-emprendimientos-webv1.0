package com.distribuida.dto;

import java.util.List;

import com.distribuida.entities.Producto;

public interface ProductoService {
	
public List<Producto> findAll();
	
	public Producto findOne(int id);
	
	public void add(int idProducto, String numeroProducto, String descripcion, Double precioProducto, Integer stock,
			String imgProducto, Integer fk_idCategoria);
	
	public void up(int idProducto, String numeroProducto, String descripcion, Double precioProducto, Integer stock,
			String imgProducto, Integer fk_idCategoria);
	
	public void del(int id);
	
	public List<Producto> findAll(String busqueda);

}
