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

import com.distribuida.dto.ClienteService;
import com.distribuida.dto.SeccionService;
import com.distribuida.entities.Cliente;
import com.distribuida.entities.Seccion;

@Controller
@RequestMapping("/secciones")
public class SeccionController {
	
	 @Autowired
	 private SeccionService seccionService;
		
	 @GetMapping("/findAll")
		public String findAll(Model model) {
			
			List<Seccion> secciones =seccionService.findAll();
			model.addAttribute("secciones",secciones);

			return "seccion-listar";
			
		}
		
		@GetMapping("/findOne")
		public String findOne(@RequestParam("idSeccion") @Nullable Integer idSeccion
				,@RequestParam("opcion") @Nullable Integer opcion
				, Model model) {
		
			if(idSeccion != null) {
				Seccion seccion = seccionService.findOne(idSeccion); 
				model.addAttribute("seccion",seccion);
			}
			
			if(opcion == 1) return "seccion-add";
			else return "seccion-del";
			
		}
		
		
		@PostMapping("/add")
		public String add(@RequestParam("idSeccion") @Nullable Integer idSeccion
				,@RequestParam("seccion") @Nullable String seccion
				, @RequestParam("descripcion") @Nullable String descripcion
				, Model model
				) {
			
			if(idSeccion == null) seccionService.add(0, seccion, descripcion);
			else seccionService.up(idSeccion, seccion, descripcion);
			
			return "redirect:/secciones/findAll";
		}
		
		@GetMapping("/del")
		public String del( @RequestParam("idSeccion") @Nullable Integer idSeccion){
			
			seccionService.del(idSeccion);

			return "redirect:/secciones/findAll";
		}
		

	
		
	

}
