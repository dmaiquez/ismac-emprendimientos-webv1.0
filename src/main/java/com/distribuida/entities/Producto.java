package com.distribuida.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="productos")
public class Producto {


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idProducto")
	private int idProducto;
	@Column(name="numeroProducto")
	private String numeroProducto;
	@Column(name="descripcion")
	private String descripcion;
	@Column(name="precioProducto")
	private Double precioProducto=0.0;
	@Column(name="stock")
	private Integer stock=0;
	@Column(name="ImgProducto")
	private String imgProducto;
	
	@ManyToOne(cascade= {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	@JoinColumn(name="fk_idCategoria")		
	//GENERAMOS Categoria ***********
//	@Autowired
	private Categoria categoria;  //Categoria

	
	//Constructor Vacio
		public Producto() {
			
		}
		

	
	public Producto(int idProducto, String numeroProducto, String descripcion, Double precioProducto, Integer stock,
				String imgProducto) {
			this.idProducto = idProducto;
			this.numeroProducto = numeroProducto;
			this.descripcion = descripcion;
			this.precioProducto = precioProducto;
			this.stock = stock;
			this.imgProducto = imgProducto;
			
		}





		// METODOS GET Y SET
		



		public int getIdProducto() {
			return idProducto;
		}


		public void setIdProducto(int idProducto) {
			this.idProducto = idProducto;
		}


		public String getNumeroProducto() {
			return numeroProducto;
		}


		public void setNumeroProducto(String numeroProducto) {
			this.numeroProducto = numeroProducto;
		}


		public String getDescripcion() {
			return descripcion;
		}


		public void setDescripcion(String descripcion) {
			this.descripcion = descripcion;
		}


		public Double getPrecioProducto() {
			return precioProducto;
		}


		public void setPrecioProducto(Double precioProducto) {
			this.precioProducto = precioProducto;
		}


		public Integer getStock() {
			return stock;
		}


		public void setStock(Integer stock) {
			this.stock = stock;
		}



		public String getImgProducto() {
			return imgProducto;
		}


		public void setImgProducto(String imgProducto) {
			this.imgProducto = imgProducto;
		}


		public Categoria getCategoria() {
			return categoria;
		}


		public void setCategoria(Categoria categoria) {
			this.categoria = categoria;
		}




		@Override
		public String toString() {
			return "Producto [idProducto=" + idProducto + ", numeroProducto=" + numeroProducto + ", descripcion="
					+ descripcion + ", precioProducto=" + precioProducto + ", stock=" + stock + ", ImgProducto="
					+ imgProducto + ", categoria=" + categoria + "]";
		}
		
	
		
		
		
	
	
	

}
