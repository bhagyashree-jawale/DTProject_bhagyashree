package com.Model;
import javax.persistence.*;

@Entity
@Table(name="Product")
public class Product
{
	int price,qty,id;
	String name;

	public Product()
	{
		
	}

	@Id
	@GeneratedValue
	@Column(name="prodId")
	
	public int getId() 
	{
		return id;
	}
	public void setId(int id) 
	{
		this.id = id;
	}

	
	@Column(name="name")	
	public String getName() 
	{
		return name;
	}	
	public void setName(String name) 
	{
		this.name = name;
	}
	
	@Column(name="quantity")	
	public int getQty()
	{
		return qty;
	}
	public void setQty(int qty) 
	{
		this.qty = qty;
	}
	
	@Column(name="price")	
	public int  getPrice() {
		return price;
	}
	public void setPrice(int price) 
	{
		this.price = price;
	}

}
