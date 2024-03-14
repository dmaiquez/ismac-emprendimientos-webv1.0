package com.distribuida.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dto.LoginuserDTO;
import com.distribuida.entities.Loginuser;


@Controller
@RequestMapping("/loginuser")
public class loginuserController {
	
	@Autowired
	private LoginuserDTO loginuserDTO;
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<Loginuser> loginuser = loginuserDTO.findAll();
		model.addAttribute("loginuser", loginuser);
		return "loginuser-listar";
	}

@GetMapping("/findOne")
public String findOne(@RequestParam("id_user") @Nullable Integer id_user
		, @RequestParam("opcion") @Nullable Integer opcion
		, Model model) {
	
	if(id_user != null) {
		Loginuser loginuser = loginuserDTO.findOne(id_user);
		model.addAttribute("loginuser",loginuser);
	}
	if(opcion == 1) return "loginuser-add";
	else return "loginuser-del";
}
@PostMapping("/add")
public String add(@RequestParam("id_user") @Nullable Integer id
		,@RequestParam("user") @Nullable String user
		, @RequestParam("pasword") @Nullable String pasword
		,@RequestParam("new_pasword") @Nullable String new_pasword 
		,@RequestParam("confirm_pasword") @Nullable String confirm_pasword 
		,@RequestParam("login_correo") @Nullable String login_correo
		,@RequestParam("login_token") @Nullable String login_token
		 ,@RequestParam("session_time_In") @Nullable @DateTimeFormat(pattern = "yyyy-MM-dd") Date session_time_In
		 ,@RequestParam("session_time_OUT") @Nullable @DateTimeFormat(pattern = "yyyy-MM-dd") Date session_time_OUT

		,@RequestParam("session_tiempo") @Nullable Integer session_tiempo
		, Model model
		) {
	
	if(id == null) loginuserDTO.add(0, user, pasword, new_pasword, confirm_pasword, login_correo, login_token,session_time_In,session_time_OUT,session_tiempo);
	else  loginuserDTO.up(id, user, pasword, new_pasword, confirm_pasword, login_correo, login_token,session_time_In,session_time_OUT,session_tiempo);
	
	return "redirect:/loginuser/findAll";
}

@GetMapping("/del")
public String del( @RequestParam("id") @Nullable Integer id){	
loginuserDTO.del(id);
return "redirect:/loginuser/findAll";

}
/**
 * @param id
 * @param user
 * @param pasword
 * @param new_pasword
 * @param confirm_pasword
 * @param login_correo
 * @param login_token
 * @param session_time_In
 * @param session_time_OUT
 * @param session_tiempo
 */

//@GetMapping("/del")
//public String del( @RequestParam("id_user") @Nullable Integer id_user){
//	
//	loginuserDTO.del(id_user);
//
//	return "redirect:/usuario/findAll";
}







