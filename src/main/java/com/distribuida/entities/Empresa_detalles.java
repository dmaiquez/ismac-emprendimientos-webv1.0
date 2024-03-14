package com.distribuida.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;


@Component
@Entity
@Table(name = "empresa_detalle")
public class Empresa_detalles {	
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idDetalleEmpresa")
	private int idDetalleEmpresa;
	@Column(name = "encuestapopularidad")
	private double encuestapopularidad; 
	@Column(name = "Comentarios")
	private String Comentarios;
	@Column(name = "ChatUsuario")
	private String ChatUsuario;
	@Column(name = "ChatCliente")
	private String ChatCliente; 
	
	@ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	@JoinColumn(name = "fk_idEmpresa")
	private Empresa empresa;
	

	
	
	public Empresa_detalles() {	}

	public Empresa_detalles(int idDetalleEmpresa, double encuestapopularidad, String comentarios, String chatUsuario,
			String chatCliente) {
		this.idDetalleEmpresa = idDetalleEmpresa;
		this.encuestapopularidad = encuestapopularidad;
		this.Comentarios = comentarios;
		this.ChatUsuario = chatUsuario;
		this.ChatCliente = chatCliente;
		/*this.empresa = fk_idEmpresa;*/
	}





	public int getIdDetalleEmpresa() {
		return idDetalleEmpresa;
	}

	public void setIdDetalleEmpresa(int idDetalleEmpresa) {
		this.idDetalleEmpresa = idDetalleEmpresa;
	}

	public double getEncuestapopularidad() {
		return encuestapopularidad;
	}

	public void setEncuestapopularidad(double encuestapopularidad) {
		this.encuestapopularidad = encuestapopularidad;
	}

	public String getComentarios() {
		return Comentarios;
	}

	public void setComentarios(String comentarios) {
		Comentarios = comentarios;
	}

	public String getChatUsuario() {
		return ChatUsuario;
	}

	public void setChatUsuario(String chatUsuario) {
		ChatUsuario = chatUsuario;
	}

	public String getChatCliente() {
		return ChatCliente;
	}

	public void setChatCliente(String chatCliente) {
		ChatCliente = chatCliente;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}


	@Override
	public String toString() {
		return "Empresa_detalles [idDetalleEmpresa=" + idDetalleEmpresa + ", encuestapopularidad=" + encuestapopularidad
				+ ", Comentarios=" + Comentarios + ", ChatUsuario=" + ChatUsuario + ", ChatCliente=" + ChatCliente
				+ ", empresa=" + empresa + "]";
	}

}
