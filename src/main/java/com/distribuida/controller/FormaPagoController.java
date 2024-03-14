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


import com.distribuida.dto.FormaPagoService;
import com.distribuida.entities.FormaPago;


@Controller
@RequestMapping("/formaPagos")
public class FormaPagoController {
	
	@Autowired
	private FormaPagoService  formaPagoService;
	
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<FormaPago> formaPagos = formaPagoService.findAll();
		model.addAttribute("formaPagos",formaPagos);
		
		return "formaPagos-listar";
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idFormaPago") @Nullable Integer idFormaPago
			, @RequestParam("opcion") @Nullable Integer opcion
			, Model model) {
		
		if(idFormaPago != null) {
			FormaPago formaPago = formaPagoService.findOne(idFormaPago);
			model.addAttribute("formaPago",formaPago);
		}
		if(opcion == 1) return "formaPagos-add";
		else return "formaPagos-del";
		
	}
	
	
	@PostMapping("/add")
	public String add(@RequestParam("idFormaPago")@Nullable Integer idFormaPago
			,@RequestParam("formaspago")@Nullable String formaspago
			,@RequestParam("descripcion")@Nullable String descripcion
			,Model model) {
		if(idFormaPago == null)formaPagoService.add(0, formaspago, descripcion);
		else formaPagoService.up(idFormaPago, formaspago, descripcion);
		return "redirect:/formaPagos/findAll";
	}
	@GetMapping("/del")
	public String del(@RequestParam("idFormaPago")@Nullable Integer idFormaPago) {
		formaPagoService.del(idFormaPago);
		return "redirect:/formaPagos/findAll";
	}
	
	

}
