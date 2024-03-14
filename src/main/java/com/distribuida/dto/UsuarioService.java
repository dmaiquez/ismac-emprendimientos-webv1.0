package com.distribuida.dto;

import java.util.List;
import java.util.Date;

import com.distribuida.entities.TipoUsuario;
import com.distribuida.entities.Usuario;

public interface UsuarioService {

	public List<Usuario> findAll();
	
	public Usuario findOne(int id);
	
	public void add(int idUsuario, String nombre, String apellido, Date fechadenacimiento, String cedula,
			String telefono, String correo, String direccion, String genero, int fk_idtipoUS);
	
	public void up(int idUsuario, String nombre, String apellido, Date fechadenacimiento, String cedula,
			String telefono, String correo, String direccion, String genero, int fk_idtipoUS);
	
	public void del(int id);
	
	public List<Usuario> findAll(String busqueda);



}

	
	


