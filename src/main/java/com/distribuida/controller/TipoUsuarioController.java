package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dto.TipoUsuarioService;
import com.distribuida.entities.TipoUsuario;

@Controller
@RequestMapping("/tipousuarios")
public class TipoUsuarioController {


	 @Autowired
	 private  TipoUsuarioService tipoUsuarioService;
		
	 @GetMapping("/findAll")
		public String findAll(Model model) {
			
			List<TipoUsuario> tipousuarios =tipoUsuarioService.findAll();
			model.addAttribute("tipousuarios",tipousuarios);

			return "tipousuarios-listar";
			
		}
		
		@GetMapping("/findOne")
		public String findOne(@RequestParam("idtipoUs") @Nullable Integer idtipoUs
				,@RequestParam("opcion") @Nullable Integer opcion
				, Model model) {
		
			if(idtipoUs != null) {
				TipoUsuario tipoUsuarios = tipoUsuarioService.findOne(idtipoUs); 
				model.addAttribute("tipoUsuarios",tipoUsuarios);
			}
			
			if(opcion == 1) return "tipousuarios-add";
			else return "tipousuarios-del";
			
		}
		

/**
 * @param idtipoUs
 * @param tipodeUser
 * @param descripcion
 */
		@PostMapping("/add")
		public String add(@RequestParam("idtipoUs") @Nullable Integer idtipoUs
				,@RequestParam("tipodeUser") @Nullable String tipodeUser
				, @RequestParam("descripcion") @Nullable String descripcion
				, Model model
				) {
			
			if(idtipoUs == null) tipoUsuarioService.add(0, tipodeUser, descripcion);
			else tipoUsuarioService.up(idtipoUs, tipodeUser, descripcion);
			
			return "redirect:/tipousuarios/findAll";
		}
		
		@GetMapping("/del")
		public String del( @RequestParam("idtipoUs") @Nullable Integer idtipoUs){
			
			tipoUsuarioService.del(idtipoUs);

			return "redirect:/tipousuarios/findAll";
		}
		

	

}
