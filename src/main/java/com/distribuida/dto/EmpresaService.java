package com.distribuida.dto;


import java.util.Date;
import java.util.List;

import com.distribuida.entities.Empresa;


public interface EmpresaService {
	
	public List<Empresa> finAll();

	public Empresa finOne(int id);
	
	public void add(int idEmpresa, String qRPago, String nombreempresa, String personaCargoEmpresa,
			String personaContacto, String telefono, String correo, String direccion, Date fechaInicio,
			String tipoEmpresa, String horariosAtencion);
	
	public void up(int idEmpresa, String qRPago, String nombreempresa, String personaCargoEmpresa,
			String personaContacto, String telefono, String correo, String direccion, Date fechaInicio,
			String tipoEmpresa, String horariosAtencion);
	
	public void del(int id);
	
	public List<Empresa> findAll(String busqueda);
}
