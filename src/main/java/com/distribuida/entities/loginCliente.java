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
@Table(name = "login_cliente")
public class loginCliente {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	@Column(name = "id")
    private int id;
	@Column(name = "user")
	private String user;
    @Column(name = "password")
	private String password;
    @Column(name = "newpassword")
	private String newpassword;
    @Column(name = "confirmpassword")
	private String confirmpassword;
	@Column(name = "logincorreo")
	private String loginCorreo;
	@Column(name = "logintoken")
    private String loginToken;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "SessiontimeIn")
    private Date SessiontimeIn;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "SessiontimeOUT")
    private Date SessiontimeOUT;
	@Column(name = "Sessiontiempo")
    private int  Sessiontiempo;
    
	
	
	public loginCliente () {
		
		
	}

	/**
	 * @param id
	 * @param user
	 * @param password
	 * @param newpassword
	 * @param confirmpassword
	 * @param loginCorreo
	 * @param loginToken
	 * @param sessiontimeIn
	 * @param sessiontimeOUT
	 * @param sessiontiempo
	 */


	
	public loginCliente(int id, String user, String password, String newpassword, String confirmpassword,
			String loginCorreo, String loginToken, Date sessiontimeIn, Date sessiontimeOUT, int sessiontiempo) {	
		this.id = id;
		this.user = user;
		this.password = password;
		this.newpassword = newpassword;
		this.confirmpassword = confirmpassword;
		this.loginCorreo = loginCorreo;
		this.loginToken = loginToken;
		this.SessiontimeIn = sessiontimeIn;
		this.SessiontimeOUT = sessiontimeOUT;
		this.Sessiontiempo = sessiontiempo;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getUser() {
		return user;
	}



	public void setUser(String user) {
		this.user = user;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getNewpassword() {
		return newpassword;
	}



	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}



	public String getConfirmpassword() {
		return confirmpassword;
	}



	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}



	public String getLoginCorreo() {
		return loginCorreo;
	}



	public void setLoginCorreo(String loginCorreo) {
		this.loginCorreo = loginCorreo;
	}



	public String getLoginToken() {
		return loginToken;
	}



	public void setLoginToken(String loginToken) {
		this.loginToken = loginToken;
	}



	public Date getSessiontimeIn() {
		return SessiontimeIn;
	}



	public void setSessiontimeIn(Date sessiontimeIn) {
		SessiontimeIn = sessiontimeIn;
	}



	public Date getSessiontimeOUT() {
		return SessiontimeOUT;
	}



	public void setSessiontimeOUT(Date sessiontimeOUT) {
		SessiontimeOUT = sessiontimeOUT;
	}



	public int getSessiontiempo() {
		return Sessiontiempo;
	}



	public void setSessiontiempo(int sessiontiempo) {
		Sessiontiempo = sessiontiempo;
	}



	@Override
	public String toString() {
		return "loginCliente [id=" + id + ", user=" + user + ", password=" + password + ", newpassword=" + newpassword
				+ ", confirmpassword=" + confirmpassword + ", loginCorreo=" + loginCorreo + ", loginToken=" + loginToken
				+ ", SessiontimeIn=" + SessiontimeIn + ", SessiontimeOUT=" + SessiontimeOUT + ", Sessiontiempo="
				+ Sessiontiempo + "]";
	}
	
	
		

	
	
}
