package com.controller;

public class Product
{
	String pid,price,qty;
	String name;
	public Product(String pid,String name,String qty,String price) 
	{
		this.pid=pid;
		this.name=name;
		this.qty=qty;
		this.price =price;
	}
	
	public String getpid() {
		return pid;
	}
	public void setpid(String pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getQty() {
		return qty;
	}
	public void setQty(String qty) {
		this.qty = qty;
	}
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
}
