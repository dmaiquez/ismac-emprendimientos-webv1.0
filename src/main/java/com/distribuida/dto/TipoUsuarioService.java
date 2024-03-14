package com.distribuida.dto;

import java.util.List;

import com.distribuida.entities.TipoUsuario;

public interface TipoUsuarioService {

	public List<TipoUsuario> findAll();
	
	public TipoUsuario findOne(int id);
	
	public void add(int idtipoUs, String tipodeUser, String descripcion);
	
	public void up(int idtipoUs, String tipodeUser, String descripcion);
	
	public void del(int id);
}

	
	


