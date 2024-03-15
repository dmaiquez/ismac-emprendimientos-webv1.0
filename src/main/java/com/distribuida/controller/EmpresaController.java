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
import com.distribuida.dto.SucursalesService;
import com.distribuida.entities.Empresa;
import com.distribuida.entities.Perfil_empresa;
import com.distribuida.entities.Sucursales;


@Controller
@RequestMapping("/empresas")
public class EmpresaController {

	@Autowired
	private EmpresaService empresaService;
	@Autowired
	private Perfil_empresaService perfil_empresaService;
	@Autowired
	private SucursalesService sucursalesService;
	
	@GetMapping("/findAll")
	public String findAll(ModelMap modelMap) {
	    List<Empresa> empresas = empresaService.finAll();
	    modelMap.addAttribute("empresas", empresas);

	    List<Perfil_empresa> empresas_logos = new ArrayList<Perfil_empresa>();

	    for (Empresa item : empresas) {
	        int id = item.getIdEmpresa();
	        Perfil_empresa perfil = perfil_empresaService.finOne(id);
	        // Verificar si el perfil existe para esta empresa antes de agregarlo
	        if (perfil != null) {
	            empresas_logos.add(perfil);
	        }
	    }

	    modelMap.addAttribute("empresas_logos", empresas_logos);

	    return "empresas-listar";
	}

	
//	@GetMapping("/findOne")
//	public String findOne(@RequestParam("idEmpresa") @Nullable Integer idEmpresa
//			, @RequestParam("opcion") @Nullable Integer opcion
//			, Model model) {
//		
//			if(idEmpresa != null) { 
//				Empresa empresa = empresaService.finOne(idEmpresa);
//				model.addAttribute("empresa",empresa);
//				
//			}
//			if(opcion == 1) return "empresa-add";
//			else return "empresa-del";
//		
//	}
	@GetMapping("/findOne")
	public String findOne(@RequestParam(name = "idEmpresa", required = false) Integer idEmpresa,
	                      @RequestParam("opcion") Integer opcion,
	                      Model model) {
	    if (idEmpresa != null) { 
	        Empresa empresa = empresaService.finOne(idEmpresa);
	        model.addAttribute("empresa", empresa);
	        
	        // Aquí obtienes la sucursal relacionada con la empresa
	        Sucursales sucursal = sucursalesService.finOne(idEmpresa);
	        model.addAttribute("sucursal", sucursal); // Cambia "sucursales" a "sucursal"

	        Perfil_empresa perfil = perfil_empresaService.finOne(idEmpresa);
	        model.addAttribute("perfil", perfil); // Cambia "sucursales" a "sucursal"
	    }

	    if (opcion == 1) {
	        // Opción 1: Actualizar
	        return "empresa-add"; // Redirige a la URL correspondiente al método empresa-add
	    } else if (opcion == 2) {
	        // Opción 2: Borrar
	        return "empresa-del"; // Redirige a la URL correspondiente al método empresa-del
	    } else if (opcion == 3) {
	        // Opción 3: Ver perfil
	        return "empresa-perfil"; // Nombre del archivo JSP para ver perfil de empresa
	    } else {
	        // Otras opciones: Redirigir a la página de empresas
	        return "redirect:/empresas/findAll";
	    }
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
		return "redirect:/perfilEmpresa/findOne?opcion=1";
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idEmpresa")@Nullable Integer idEmpresa) {
		empresaService.del(idEmpresa);
		return "redirect:/empresas/findAll";
	}
	@GetMapping("/perfilEmpresa")
	public String mostrarPerfilEmpresa(@RequestParam(name = "idEmpresa") Integer idEmpresa, Model model) {
	    // Obtener la empresa por su ID
	    Empresa empresa = empresaService.finOne(idEmpresa);
	    if (empresa == null) {
	        // Manejar el caso donde la empresa no existe
	        return "redirect:/empresas/findAll";
	    }
	    
	    // Obtener el perfil de la empresa por su ID
	    Perfil_empresa perfilEmpresa = perfil_empresaService.finOne(idEmpresa);
	    if (perfilEmpresa == null) {
	        // Manejar el caso donde el perfil de empresa no existe
	        // Redirigir a una página de error o mostrar un mensaje apropiado
	        return "redirect:/empresas/findAll";
	    }
	    
	    // Obtener la sucursal de la empresa por su ID
	    Sucursales sucursal = sucursalesService.finOne(idEmpresa);
	    if (sucursal == null) {
	        // Manejar el caso donde no hay sucursal para esta empresa
	        // Puedes redirigir a una página de error o mostrar un mensaje apropiado
	        return "redirect:/empresas/findAll";
	    }
	    
	    // Agregar la empresa, su perfil y la sucursal al modelo
	    model.addAttribute("empresa", empresa);
	    model.addAttribute("perfilEmpresa", perfilEmpresa);
	    model.addAttribute("sucursal", sucursal);
	    
	    // Retornar el nombre de la vista para mostrar el perfil de la empresa
	    return "empresa-perfil";
	}




}
