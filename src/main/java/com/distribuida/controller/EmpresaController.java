package com.distribuida.controller;

import java.util.ArrayList;
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

import com.distribuida.dto.EmpresaService;
import com.distribuida.dto.Perfil_empresaService;
import com.distribuida.entities.Empresa;
import com.distribuida.entities.Perfil_empresa;


@Controller
@RequestMapping("/empresas")
public class EmpresaController {

	@Autowired
	private EmpresaService empresaService;
	@Autowired
	private Perfil_empresaService perfil_empresaService;
	
	@GetMapping("/findAll")
	public String findAll(ModelMap modelMap) {
		
		List<Empresa> empresas =empresaService.finAll();
		modelMap.addAttribute("empresas",empresas);
		
		List<Perfil_empresa> empresas_logos = new ArrayList<Perfil_empresa>();
		
		for (Empresa item : empresas) {
			
			int id = item.getIdEmpresa();
			Perfil_empresa perfil = perfil_empresaService.finOne(id);
//			if(id != 0) {				
				empresas_logos.add(perfil);	
//			}
			
			
		}
		
		modelMap.addAttribute("empresas_logos",empresas_logos);
		
		return "empresas-listar";
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idEmpresa") @Nullable Integer idEmpresa
			, @RequestParam("opcion") @Nullable Integer opcion
			, Model model) {
		
		if(idEmpresa != null) { 
			Empresa empresa = empresaService.finOne(idEmpresa);
			model.addAttribute("empresa",empresa);
			
		}
		if(opcion == 1) return "empresa-add";
		else return "empresa-del";
		
	}
	@PostMapping("/add")
	public String add(@RequestParam("idEmpresa")@Nullable Integer idEmpresa
			,@RequestParam("QRPago")@Nullable String QRPago
			,@RequestParam("nombreempresa")@Nullable String nombreempresa
			,@RequestParam("personaCargoEmpresa")@Nullable String personaCargoEmpresa
			,@RequestParam("personaContacto")@Nullable String personaContacto
			,@RequestParam("telefono")@Nullable String telefono
			,@RequestParam("correo")@Nullable String correo
			,@RequestParam("direccion")@Nullable String direccion
			,@RequestParam("FechaInicio")@Nullable @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaInicio
			,@RequestParam("TipoEmpresa")@Nullable String tipoEmpresa
			,@RequestParam("HorariosAtencion")@Nullable String horariosAtencion
			,Model model) {
		if(idEmpresa == null)empresaService.add(0, QRPago, nombreempresa, personaCargoEmpresa, personaContacto, telefono, correo, direccion, fechaInicio, tipoEmpresa, horariosAtencion);
		else empresaService.up(idEmpresa, QRPago, nombreempresa, personaCargoEmpresa, personaContacto, telefono, correo, direccion, fechaInicio, tipoEmpresa, horariosAtencion);
		return "redirect:/empresas/findAll";
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idEmpresa")@Nullable Integer idEmpresa) {
		empresaService.del(idEmpresa);
		return "redirect:/empresas/findAll";
	}
}
