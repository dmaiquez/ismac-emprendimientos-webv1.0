package com.distribuida.dto;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.distribuida.dao.TipoUsuarioDAO;
import com.distribuida.dao.UsuarioDAO;
import com.distribuida.entities.TipoUsuario;
import com.distribuida.entities.Usuario;


@Service
public class UsuarioServiceImpl implements UsuarioService {

	
	@Autowired
	private UsuarioDAO usuarioDAO;

	@Autowired
	private TipoUsuarioDAO tipoUsuarioDAO;
	
	@Override	
	public List<Usuario> findAll() {
		// TODO Auto-generated method stub
		return usuarioDAO.findAll();		
	}

	@Override	
	public Usuario findOne(int id) {
		// TODO Auto-generated method stu
		return usuarioDAO.findOne(id);
	}

	@Override	
	public void del(int id) {
		// TODO Auto-generated method stub
		usuarioDAO.del(id);
	}


	@Override
	public List<Usuario> findAll(String busqueda) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void add(int idUsuario, String nombre, String apellido, Date fechadenacimiento, String cedula, String telefono,
			String correo, String direccion, String genero, int fk_idtipoUS) {
		// TODO Auto-generated method stub
		TipoUsuario tipoUsuario = tipoUsuarioDAO.findOne(fk_idtipoUS);
		Usuario usuario1 = new Usuario(idUsuario,nombre,apellido,fechadenacimiento,cedula,direccion,telefono,correo,genero, tipoUsuario);
		usuario1.setTipoUsuario(tipoUsuario);
		usuarioDAO.add(usuario1);
	}

	@Override
	public void up(int idUsuario, String nombre, String apellido, Date fechadenacimiento, String cedula, String telefono,
			String correo, String direccion, String genero, int fk_idtipoUS) {
		// TODO Auto-generated method stub
	
		TipoUsuario tipoUsuario = tipoUsuarioDAO.findOne(fk_idtipoUS);
		Usuario usuario1 = new Usuario(idUsuario,nombre,apellido,fechadenacimiento,cedula,direccion,telefono,correo,genero, tipoUsuario);
		usuario1.setTipoUsuario(tipoUsuario);
		usuarioDAO.up(usuario1);
	}



}
