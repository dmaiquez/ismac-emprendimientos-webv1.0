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

import com.distribuida.dto.EmpresaService;
import com.distribuida.dto.Empresa_detallesService;
import com.distribuida.entities.Empresa;
import com.distribuida.entities.Empresa_detalles;



@Controller
@RequestMapping("/empresaDetalles")
public class Empresa_detallesController {

	@Autowired
	private Empresa_detallesService empresa_detallesService;
	
	@Autowired
	private EmpresaService empresaService;
	
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<Empresa_detalles> detalles =empresa_detallesService.finAll();
		model.addAttribute("detalles",detalles);
		return "detalles-empresa-listar";
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idDetalleEmpresa") @Nullable Integer idDetalleEmpresa,
			@RequestParam("opcion") @Nullable Integer opcion,
			ModelMap modelMap) {
			if(idDetalleEmpresa != null) {
				Empresa_detalles detalle = empresa_detallesService.finOne(idDetalleEmpresa);
				modelMap.addAttribute("detalle",detalle);
			}
			List<Empresa> empresa = empresaService.finAll();
			modelMap.addAttribute("empresa",empresa);
			
			if(opcion == 1)return "detalles-empresa-add";
			else return "detalles-empresa-del";
	}
	
	@PostMapping("/add")
	public String add(@RequestParam ("idDetalleEmpresa") @Nullable Integer idDetalleEmpresa,
			  @RequestParam ("encuestapopularidad") @Nullable double encuestapopularidad,
			  @RequestParam ("comentarios") @Nullable String comentarios,
			  @RequestParam ("chatUsuario") @Nullable String chatUsuario,
			  @RequestParam ("chatCliente") @Nullable String chatCliente,
			  @RequestParam ("idEmpresa") @Nullable Integer idEmpresa,
			  Model model) {
		
		if(idDetalleEmpresa == null) {
			empresa_detallesService.add(0, encuestapopularidad, comentarios, chatUsuario, chatCliente, idEmpresa);
		}else {
			empresa_detallesService.up(idDetalleEmpresa, encuestapopularidad, comentarios, chatUsuario, chatCliente, idEmpresa);
		}
		 
		return "redirect:/empresaDetalles/findAll";
	}
	
	@GetMapping("/del")
	public String del(@RequestParam ("idDetalleEmpresa") @Nullable Integer idDetalleEmpresa) {
		empresa_detallesService.del(idDetalleEmpresa);
		return "redirect:/empresaDetalles/findAll";
		
	}
}
