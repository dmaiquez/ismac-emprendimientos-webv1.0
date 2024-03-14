package com.distribuida.controller;

import java.util.Date;
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
import com.distribuida.dto.ProductoService;
import com.distribuida.entities.Categoria;
import com.distribuida.entities.Producto;

@Controller
@RequestMapping("/productos")
public class ProductoController {
	
	
	@Autowired
	private ProductoService productoService;
	
	@Autowired
	private CategoriaService categoriaService;
	
	
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<Producto> productos = productoService.findAll();
		
		model.addAttribute("productos",productos);
		
		return "productos-listar";
	}
	
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idProducto") @Nullable Integer idProducto
			, @RequestParam("opcion") @Nullable Integer opcion 
			, ModelMap modelMap
			) {

	if(idProducto != null) {
		Producto producto = productoService.findOne(idProducto);
	modelMap.addAttribute("producto",producto);
	}
		
		List<Categoria> categorias =categoriaService.findAll();
		modelMap.addAttribute("categorias",categorias);

	
	
//	List<Categoria> categorias =categoriaService.findAll();
//	
//	modelMap.addAttribute("categorias",categorias);
//	
	if(opcion == 1) return "productos-add";
	else return "productos-del";

	}
	
	@PostMapping("/add")
	public String add( 
		

	
	
		@RequestParam("idProducto") @Nullable Integer idProducto
		 ,@RequestParam("numeroProducto") @Nullable String numeroProducto
		 ,@RequestParam("descripcion") @Nullable String descripcion
		 ,@RequestParam("precioProducto") @Nullable Double precioProducto
		 ,@RequestParam("stock") @Nullable Integer stock
		 ,@RequestParam("imgProducto") @Nullable String imgProducto
		 ,@RequestParam("idCategoria") @Nullable Integer idCategoria

	) {
	
	
	if(idProducto == null) {
		productoService.add(0, numeroProducto, descripcion,precioProducto, stock, imgProducto, idCategoria);
	}
	else {
		productoService.add(idProducto, numeroProducto, descripcion, precioProducto, stock, imgProducto, idCategoria);
	}
	return "redirect:/productos/findAll";
	}
	
	@GetMapping("/del")
	public String del( @RequestParam("idProducto") @Nullable Integer idProducto){
		productoService.del(idProducto);

		return "redirect:/productos/findAll";
	}

	

	
	

}
