package com.niit.shoppingcart.model;

import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Category {

	@Id
	private String cy_id;
	@NotEmpty
	private String cy_name;
	@NotEmpty
	private String cy_description;
	
	
	

	@OneToMany(fetch=FetchType.EAGER,mappedBy="category")
	private Set<Product> products;
	public Set<Product> getProducts() {
		return products;
	}

	public void SetProducts(Set<Product> products) {
		this.products = products;
	}

	public String getCy_id() {
		return cy_id;
	}

	public void setCy_id(String cy_id) {
		this.cy_id = cy_id;
	}

	public String getCy_name() {
		return cy_name;
	}

	public void setCy_name(String cy_name) {
		this.cy_name = cy_name;
	}

	public String getCy_description() {
		return cy_description;
	}

	public void setCy_description(String cy_description) {
		this.cy_description = cy_description;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	
}




