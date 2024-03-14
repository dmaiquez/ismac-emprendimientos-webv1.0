package com.distribuida.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "empresa")
public class Empresa {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idEmpresa")
	private int idEmpresa;
	@Column(name = "QRPago")
	private String QRPago;  
	@Column(name = "nombreempresa")
	private String nombreempresa;  
	@Column(name = "personaCargoEmpresa")
	private String personaCargoEmpresa;
	@Column(name = "personaContacto")
	private String personaContacto;
	@Column(name = "telefono")
	private String telefono;
	@Column(name = "correo")
	private String correo;
	@Column(name = "direccion")
	private String direccion;
	@Column(name = "FechaInicio")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date FechaInicio;
	@Column(name = "TipoEmpresa")
	private String TipoEmpresa;
	@Column(name = "HorariosAtencion")
	private String HorariosAtencion;
	
	
	public Empresa(){}

	
	public Empresa(int idEmpresa, String qRPago, String nombreempresa, String personaCargoEmpresa,
			String personaContacto, String telefono, String correo, String direccion, Date fechaInicio,
			String tipoEmpresa, String horariosAtencion) {
		this.idEmpresa = idEmpresa;
		this.QRPago = qRPago;
		this.nombreempresa = nombreempresa;
		this.personaCargoEmpresa = personaCargoEmpresa;
		this.personaContacto = personaContacto;
		this.telefono = telefono;
		this.correo = correo;
		this.direccion = direccion;
		this.FechaInicio = fechaInicio;
		this.TipoEmpresa = tipoEmpresa;
		this.HorariosAtencion = horariosAtencion;
	}




	public int getIdEmpresa() {
		return idEmpresa;
	}




	public void setIdEmpresa(int idEmpresa) {
		this.idEmpresa = idEmpresa;
	}




	public String getQRPago() {
		return QRPago;
	}




	public void setQRPago(String qRPago) {
		QRPago = qRPago;
	}




	public String getNombreempresa() {
		return nombreempresa;
	}




	public void setNombreempresa(String nombreempresa) {
		this.nombreempresa = nombreempresa;
	}




	public String getPersonaCargoEmpresa() {
		return personaCargoEmpresa;
	}




	public void setPersonaCargoEmpresa(String personaCargoEmpresa) {
		this.personaCargoEmpresa = personaCargoEmpresa;
	}




	public String getPersonaContacto() {
		return personaContacto;
	}




	public void setPersonaContacto(String personaContacto) {
		this.personaContacto = personaContacto;
	}




	public String getTelefono() {
		return telefono;
	}




	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}




	public String getCorreo() {
		return correo;
	}




	public void setCorreo(String correo) {
		this.correo = correo;
	}




	public String getDireccion() {
		return direccion;
	}




	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}




	public Date getFechaInicio() {
		return FechaInicio;
	}




	public void setFechaInicio(Date fechaInicio) {
		FechaInicio = fechaInicio;
	}




	public String getTipoEmpresa() {
		return TipoEmpresa;
	}




	public void setTipoEmpresa(String tipoEmpresa) {
		this.TipoEmpresa = tipoEmpresa;
	}




	public String getHorariosAtencion() {
		return HorariosAtencion;
	}




	public void setHorariosAtencion(String horariosAtencion) {
		HorariosAtencion = horariosAtencion;
	}


	@Override
	public String toString() {
		return "Empresa [idEmpresa=" + idEmpresa + ", QRPago=" + QRPago + ", nombreempresa=" + nombreempresa
				+ ", personaCargoEmpresa=" + personaCargoEmpresa + ", personaContacto=" + personaContacto
				+ ", telefono=" + telefono + ", correo=" + correo + ", direccion=" + direccion + ", FechaInicio="
				+ FechaInicio + ", TipoEmpresa=" + TipoEmpresa + ", HorariosAtencion=" + HorariosAtencion + "]";
	}

	
}
