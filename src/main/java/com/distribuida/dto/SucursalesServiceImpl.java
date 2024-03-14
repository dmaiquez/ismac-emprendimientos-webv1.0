package com.distribuida.dto;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.distribuida.dao.EmpresaDAO;
import com.distribuida.dao.SucursalesDAO;
import com.distribuida.entities.Empresa;
import com.distribuida.entities.Sucursales;


@Service
public class SucursalesServiceImpl implements SucursalesService {
	
	@Autowired
	private SucursalesDAO sucursalesDAO;
	@Autowired
	private EmpresaDAO empresaDAO; 
	
	@Override
	public List<Sucursales> finAll() {
		// TODO Auto-generated method stub
		return sucursalesDAO.findAll();
	}

	@Override
	public Sucursales finOne(int id) {
		// TODO Auto-generated method stub
		return sucursalesDAO.findOne(id);
	}

	@Override
	public void add(int idSucursales, String sucursal, String descripcion, int fk_idEmpresa){
		// TODO Auto-generated method stub
		Empresa empresa = empresaDAO.findOne(fk_idEmpresa);
		Sucursales sucursales = new Sucursales(idSucursales, sucursal, descripcion);
		sucursales.setEmpresa(empresa);
		sucursalesDAO.add(sucursales);
	}

	@Override
	public void up(int idSucursales, String sucursal, String descripcion, int fk_idEmpresa) {
		// TODO Auto-generated method stub
		Empresa empresa = empresaDAO.findOne(fk_idEmpresa);
		Sucursales sucursales = new Sucursales(idSucursales, sucursal, descripcion);
		sucursales.setEmpresa(empresa);
		sucursalesDAO.up(sucursales);
	}

	@Override
	public void del(int id) {
		// TODO Auto-generated method stub
		sucursalesDAO.del(id);
	}

	@Override
	public List<Sucursales> findAll(String busqueda) {
		// TODO Auto-generated method stub
		return sucursalesDAO.findAll(busqueda);
	}
	
	

}
