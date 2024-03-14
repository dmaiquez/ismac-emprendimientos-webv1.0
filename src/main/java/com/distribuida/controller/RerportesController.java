package com.distribuida.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dto.ReportesService;
import com.distribuida.entities.Reportes;

@Controller
@RequestMapping("/reportes")
public class RerportesController {

	
		@Autowired
		private ReportesService reportesService;
		
		@GetMapping("/findAll")
		public String findAll(Model model) {
			
			List<Reportes> reportes =reportesService.finAll();
			model.addAttribute("reportes",reportes);
			return "reportes-listar";
		}
		
		@GetMapping("/findOne")
		public String findOne(@RequestParam("idReporte") @Nullable Integer idReporte
				, @RequestParam("opcion") @Nullable Integer opcion
				, Model model) {
			
			if(idReporte != null) { 
				Reportes reporte = reportesService.finOne(idReporte);
				model.addAttribute("reporte",reporte);
			}
			if(opcion == 1) return "reportes-add";
			else return "reportes-del";
		}

		@PostMapping("/add")
		public String add(@RequestParam("idReporte")@Nullable Integer idReporte
				,@RequestParam("reporte")@Nullable String reporte
				,@RequestParam("fechaReporte")@Nullable @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaReporte
				,@RequestParam("descripcion")@Nullable String descripcion
				,Model model) {
			if(idReporte == null)reportesService.add(0, reporte,fechaReporte, descripcion);
			else reportesService.up(idReporte, reporte, fechaReporte, descripcion);
			return "redirect:/reportes/findAll";
		}
		
		@GetMapping("/del")
		public String del(@RequestParam("idReporte")@Nullable Integer idReporte) {
			reportesService.del(idReporte);
			return "redirect:/reportes/findAll";
		}
}
