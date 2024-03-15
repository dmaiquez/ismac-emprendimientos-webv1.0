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
import com.distribuida.dto.Perfil_empresaService;
import com.distribuida.entities.Empresa;
import com.distribuida.entities.Perfil_empresa;

@Controller
@RequestMapping("/perfilEmpresa")
public class Perfil_empresaController {

	
	@Autowired
	private Perfil_empresaService perfil_empresaService;
	
	@Autowired
	private EmpresaService empresaService;
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<Perfil_empresa> perfiles =perfil_empresaService.finAll();
		model.addAttribute("perfiles",perfiles);
		return "perfil-empresa-listar";
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idPerfilEmpresa") @Nullable Integer idPerfilEmpresa,
			@RequestParam("opcion") @Nullable Integer opcion,
			ModelMap modelMap) {
			if(idPerfilEmpresa != null) {
				Perfil_empresa perfil = perfil_empresaService.finOne(idPerfilEmpresa);
				modelMap.addAttribute("perfil",perfil);
			}
			List<Empresa> empresa = empresaService.finAll();
			modelMap.addAttribute("empresa",empresa);
			
			if(opcion == 1)return "perfil-empresa-add";
			else return "perfil-empresa-del";
	}
	
	@PostMapping("/add")
	public String add(@RequestParam ("idPerfilEmpresa") @Nullable Integer idPerfilEmpresa,
			  @RequestParam ("logo") @Nullable String logo,
			  @RequestParam ("opcColor1") @Nullable String opcColor1,
			  @RequestParam ("opcColor2") @Nullable String opcColor2,
			  @RequestParam ("gamaColor") @Nullable String gamaColor,
			  @RequestParam ("idEmpresa") @Nullable Integer idEmpresa,
			  Model model) {
		
		if(idPerfilEmpresa == null) {
			perfil_empresaService.add(0, logo, opcColor1, opcColor2, gamaColor, idEmpresa);
		}else {
			perfil_empresaService.up(idPerfilEmpresa, logo, opcColor1, opcColor2, gamaColor, idEmpresa);
		}
		 
		return "redirect:/sucursales/findOne?opcion=1";
	}
	
	@GetMapping("/del")
	public String del(@RequestParam ("idPerfilEmpresa") @Nullable Integer idPerfilEmpresa) {
		perfil_empresaService.del(idPerfilEmpresa);
		return "redirect:/perfilEmpresa/findAll";
		
	}
}
