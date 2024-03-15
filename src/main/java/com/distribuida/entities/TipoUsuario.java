package com.distribuida.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="tipos_usuario")
public class TipoUsuario {
	


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idtipoUs")
	private int idtipoUs;
	@Column(name = "TipodeUser")
    private String tipodeUser;
	@Column(name = "Descripcion")
    private String descripcion;

	public TipoUsuario() {
	
	}

	public TipoUsuario(int idtipoUs, String tipodeUser, String descripcion) {
	
		this.idtipoUs = idtipoUs;
		this.tipodeUser = tipodeUser;
		this.descripcion = descripcion;
	}

	public int getIdtipoUs() {
		return idtipoUs;
	}

	public void setIdtipoUs(int idtipoUs) {
		this.idtipoUs = idtipoUs;
	}

	public String getTipodeUser() {
		return tipodeUser;
	}

	public void setTipodeUser(String tipodeUser) {
		this.tipodeUser = tipodeUser;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "TipoUsuario [idtipoUs=" + idtipoUs + ", tipodeUser=" + tipodeUser + ", descripcion=" + descripcion
				+ "]";
	}

	

	
	
	

}
