package com.distribuida.dto;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.dao.TipoUsuarioDAO;
import com.distribuida.entities.TipoUsuario;

@Repository
public class TipoUsuarioServiceImpl implements TipoUsuarioService {

	
	@Autowired
	private TipoUsuarioDAO tipoUsuarioDAO;
	
	@Override	
	public List<TipoUsuario> findAll() {
		// TODO Auto-generated method stub		
		return tipoUsuarioDAO.findAll();
	}

	@Override	
	public TipoUsuario findOne(int id) {
		// TODO Auto-generated method stub
		return tipoUsuarioDAO.findOne(id);
	}

	@Override
	public void del(int id) {
		// TODO Auto-generated method stub
		tipoUsuarioDAO.del(id);
	}

	@Override
	public void add(int idtipoUs, String tipodeUser, String descripcion) {
		// TODO Auto-generated method stub

		TipoUsuario tipoUsuario = new TipoUsuario(idtipoUs,tipodeUser,descripcion);
		tipoUsuarioDAO.add(tipoUsuario);
		
	}

	@Override
	public void up(int idtipoUs, String tipodeUser, String descripcion) {
		// TODO Auto-generated method stub
		TipoUsuario tipoUsuario = new TipoUsuario(idtipoUs,tipodeUser,descripcion);
		tipoUsuarioDAO.up(tipoUsuario);
		
	}

}
