
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

import com.distribuida.dto.ClienteService;
import com.distribuida.dto.TipoUsuarioService;
import com.distribuida.dto.TipoUsuarioServiceImpl;
import com.distribuida.entities.Cliente;
import com.distribuida.entities.TipoUsuario;

@Controller
@RequestMapping("/clientes")
public class ClienteController {

	
	@Autowired
	private ClienteService clienteService;
	
	@Autowired
	private TipoUsuarioService tipoUsuarioService;
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<Cliente> clientes = clienteService.findAll();
		model.addAttribute("clientes", clientes);
		
		return "clientes-listar";
	}
	
	
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idCliente") @Nullable Integer idCliente
			, @RequestParam("opcion") @Nullable  Integer opcion
			, ModelMap modelmap) {
	
		if(idCliente != null) {
			Cliente cliente = clienteService.findOne(idCliente);
			modelmap.addAttribute("cliente", cliente);
		}
		
		List<TipoUsuario> tipousuarios = tipoUsuarioService.findAll();
		
		modelmap.addAttribute("tipousuarios", tipousuarios);
		
		if(opcion == 1) return "clientes-add";
		else return "clientes-del";
				
	}
		
	
	
	@PostMapping("/add")
	public String add(@RequestParam("idCliente") @Nullable Integer idCliente
			, @RequestParam("cedula") @Nullable String cedula
			, @RequestParam("nombre") @Nullable String nombre
			, @RequestParam("apellido") @Nullable String apellido
			, @RequestParam("direccion") @Nullable String direccion
			, @RequestParam("telefono") @Nullable String telefono
			, @RequestParam("correo") @Nullable String correo
			, @RequestParam("genero") @Nullable String genero
			, @RequestParam("fechadenacimiento") @Nullable @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechadenacimiento
			,@RequestParam("idtipoUs") @Nullable Integer idtipoUs
			, Model model
			) {
		if(idCliente == null) clienteService.add(0, cedula, nombre, apellido, direccion, telefono, correo, genero, fechadenacimiento, idtipoUs);
		else clienteService.up(idCliente, cedula, nombre, apellido, direccion, telefono, correo, genero, fechadenacimiento, idtipoUs);
		
		return "redirect:/clientes/findAll";
	}
	
	
	@GetMapping("/del")
	public String del(@RequestParam("idCliente") @Nullable Integer idCliente) {
		
		clienteService.del(idCliente);
		
		return "redirect:/clientes/findAll";
	}
	
	
}
