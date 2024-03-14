package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dto.CategoriaService;
import com.distribuida.dto.SeccionService;
import com.distribuida.entities.Categoria;
import com.distribuida.entities.Seccion;


@Controller
@RequestMapping("/categorias")
public class CategoriaController {
	/**/

	@Autowired
	private CategoriaService categoriaService;
	
	@Autowired
	private SeccionService seccionService;
	
	
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<Categoria> categorias = categoriaService.findAll();
		
		model.addAttribute("categorias",categorias);
		
		return "categorias-listar";
	}
	
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idCategoria") @Nullable Integer idCategoria
			, @RequestParam("opcion") @Nullable Integer opcion 
			, ModelMap modelMap
			) {

	if(idCategoria != null) {
		Categoria categoria = categoriaService.findOne(idCategoria);
	modelMap.addAttribute("categoria",categoria);
	}
	
	List<Seccion> secciones =seccionService.findAll();
	
	modelMap.addAttribute("secciones",secciones);
	
	if(opcion == 1) return "categorias-add";
	else return "categorias-del";

	}
	
	@PostMapping("/add")
	public String add( 
		

	
		@RequestParam("idCategoria") @Nullable Integer idCategoria
		 ,@RequestParam("categoria") @Nullable String categoria
		 ,@RequestParam("descripcion") @Nullable String descripcion
	
		 ,@RequestParam("idSeccion") @Nullable Integer idSeccion

		 
	) {
	
	
	if(idCategoria == null) {
		categoriaService.add(0, categoria, descripcion, idSeccion);
	}
	else {
		categoriaService.add(idCategoria, categoria, descripcion, idSeccion);
	}
	return "redirect:/categorias/findAll";
	}
	
	@GetMapping("/del")
	public String del( @RequestParam("idCategoria") @Nullable Integer idCategoria){
		categoriaService.del(idCategoria);

		return "redirect:/categorias/findAll";
	}

	

	

}
