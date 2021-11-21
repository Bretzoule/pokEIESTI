package spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Entity
@Table(name = "products")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "product_id", unique = true)
	private int id;

	@Column(name = "name")
	@Size(min=1, message = "Ce champ est requis.")
	private String name;

	@Column(name = "description")
	@Lob
	@Size(min=1,message = "Ce champ est requis.")
	private String description;

	@Column(name = "price")
	@Min(value = 0L, message = "Ce champ doit être positif.")
	private double price;

	@Column(name = "stock")
	@Min(value = 1, message = "Ce champ doit être supérieur à 0.")
	private int stock;

	@Column(name = "picture")
	private String picture;

	@Enumerated(EnumType.STRING)
	@Column(name = "type")
	private Type type;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}
}
