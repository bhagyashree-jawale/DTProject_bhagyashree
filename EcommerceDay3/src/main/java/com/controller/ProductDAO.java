package com.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.util.*;


public class ProductDAO
{

	public String displayProduct()
	{
		List <Product> l=new ArrayList<Product>();
		Product p1=new Product("1","Hand Bag","2","1200");
		Product p2=new Product("2","Laptop Bag","3","2300");
		Product p3=new Product("3","Hand Bag","4","699");
		Product p4=new Product("4","Luggage Bag","1","1500");
		Product p5=new Product("5","Laptop Bag","2","999");
		l.add(p1);
		
		l.add(p2);
		l.add(p3);
		l.add(p4);
		l.add(p5);
		
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(l);
		return json;
	}
}
