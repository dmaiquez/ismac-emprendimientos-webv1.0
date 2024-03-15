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
import com.distribuida.dto.SucursalesService;
import com.distribuida.entities.Empresa;
import com.distribuida.entities.Sucursales;


@Controller
@RequestMapping("/sucursales")
public class SucursalesController {

	
	@Autowired
	private SucursalesService sucursalesService;
	
	@Autowired
	private EmpresaService empresaService;
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<Sucursales> sucursales =sucursalesService.finAll();
		model.addAttribute("sucursales",sucursales);
		return "sucursales-listar";
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idSucursales") @Nullable Integer idSucursales,
			@RequestParam("opcion") @Nullable Integer opcion,
			ModelMap modelMap) {
			if(idSucursales != null) {
				Sucursales sucursal = sucursalesService.finOne(idSucursales);
				modelMap.addAttribute("sucursal",sucursal);
			}
			List<Empresa> empresa = empresaService.finAll();
			modelMap.addAttribute("empresa",empresa);
			
			if(opcion == 1)return "sucursales-add";
			else return "sucursales-del";
	}
	
	
	@PostMapping("/add")
	public String add(@RequestParam ("idSucursales") @Nullable Integer idSucursales,
			  @RequestParam ("sucursal") @Nullable String sucursal,
			  @RequestParam ("descripcion") @Nullable String descripcion,
			  @RequestParam ("idEmpresa") @Nullable Integer idEmpresa,
			  Model model) {
		
		if(idSucursales == null) {
			sucursalesService.add(0, sucursal, descripcion, idEmpresa);
		}else {
			sucursalesService.up(idSucursales, sucursal, descripcion, idEmpresa);
		}
		 
		return "redirect:/sucursales/findAll";
	}
	
	@GetMapping("/del")
	public String del(@RequestParam ("idSucursales") @Nullable Integer idSucursales) {
		sucursalesService.del(idSucursales);
		return "redirect:/empresas/findAll";
		
	}
}
