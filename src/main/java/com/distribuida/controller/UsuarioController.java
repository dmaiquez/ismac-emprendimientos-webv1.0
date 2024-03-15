package com.distribuida.controller;

import java.util.Date;
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dto.TipoUsuarioService;
import com.distribuida.dto.UsuarioService;
import com.distribuida.dto.UsuarioService;
import com.distribuida.entities.TipoUsuario;
import com.distribuida.entities.Usuario;
import com.distribuida.entities.Usuario;
 
 
 
@Controller
@RequestMapping("/usuarios")
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@Autowired
		private TipoUsuarioService tipoUsuarioService;
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<Usuario> usuarios = usuarioService.findAll();
		model.addAttribute("usuarios",usuarios);
 
		return "usuario-listar";
		
	}
	
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idUsuario") @Nullable Integer idUsuario
			,@RequestParam("opcion") @Nullable Integer opcion
			, ModelMap modelmap) {
	
		if(idUsuario != null) {
			Usuario usuario = usuarioService.findOne(idUsuario);
			modelmap.addAttribute("usuario",usuario);
		}
		
   List<TipoUsuario> tipousuarios = tipoUsuarioService.findAll();
		
		modelmap.addAttribute("tipousuarios", tipousuarios);
		
		if(opcion == 1) return "usuario-add";
		else return "usuario-del";
		
	
		
	}
	
	@PostMapping("/add")
	public String add(@RequestParam("idUsuario") @Nullable Integer idUsuario
			, @RequestParam("nombre") @Nullable String nombre
			,@RequestParam("apellido") @Nullable String apellido
			,@RequestParam("fechadenacimiento") @Nullable @DateTimeFormat(pattern = "yyyy-MM-dd") Date  fechadenacimiento 
			,@RequestParam("cedula") @Nullable String cedula
			,@RequestParam("telefono") @Nullable String telefono
			 ,@RequestParam("correo") @Nullable String correo
			 ,@RequestParam("direccion") @Nullable String direccion
			 , @RequestParam("genero") @Nullable String genero
			 
			 , @RequestParam("idtipoUs") @Nullable Integer idtipoUs
			, Model model
			) {
		
		if(idUsuario == null) usuarioService.add(0, nombre, apellido,fechadenacimiento, cedula, telefono, correo, direccion, genero, idtipoUs);
		else usuarioService.up(idUsuario, nombre, apellido,fechadenacimiento,  cedula, telefono, correo, direccion, genero, idtipoUs);
		
		return "redirect:/usuarios/findAll";
	}
	
	@GetMapping("/del")
	public String del( @RequestParam("idUsuario") @Nullable Integer idUsuario){
		
		usuarioService.del(idUsuario);
 
		return "redirect:/usuarios/findAll";
	}
 
 
}