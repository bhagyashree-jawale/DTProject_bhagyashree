package com.controller;

import java.util.ArrayList;
import java.util.Map;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.Model.Product;


@Controller
public class IndexController
{
	@RequestMapping("/")
	public String showMessage() 
	{
		
		 return "index";
	}
	 @RequestMapping("/index")
     public String index()
     {
         return "index";
     }
	 @RequestMapping("/Login")
     public String login()
     {
         return "Login";
     }
     
     @RequestMapping("/Register")
     public String register()
     {
         return "Register";
     }
     
     @RequestMapping("/About")
     public String about()
     {
         return "About";
     }
     @RequestMapping("/Contact")
     public String contact()
     {
         return "Contact";
     }
     
   //  @Autowired
    /* ProductServices prdService;
     
     @RequestMapping("/Product")    
     public String product(Map<String,Object> map)
     {
    	 System.out.println("hello1");
    	 Product p=new Product();
    	 System.out.println("hello2");
    	 map.put("Product", p);
    	 System.out.println("hello3");
    	// map.put("productList", prdService.displayProduct());
    	 System.out.println("hello4");
    	 return "/Product";
   
    	 
     }
     
     @RequestMapping(value="/Product.do",method=RequestMethod.POST)
     public String doActions(@ModelAttribute Product prd,BindingResult result,@RequestParam("action") String cat,Map<String,Object> map)  
     {
    	 int act=Integer.parseInt(cat);
    	 Product productR=new Product();
    	 switch(act)
    	 {    	
    	 case 1:
    		 System.out.println("hello5");
    		 prdService.add(prd);
    		 System.out.println("hello6");
    		 productR=prd;
    		 break;
    		 
    	 case 2:
    		 prdService.edit(prd);
    		 productR=prd;
    		 break;
    	 case 3:
    		 prdService.delete(prd.getId());
    		 productR=new Product();
    		 break;
    	 case 4:
    		 Product searchPrd=prdService.getProduct(prd.getId());
    		 productR=searchPrd!=null?searchPrd:new Product();
    		 break;
    	 }
    	 map.put("Product",productR );
    	 map.put("productList",prdService.displayProduct());
    	return "Product";
     }*/
     
     /* @RequestMapping("/Product")    
     public String product(@RequestParam("category") String cat, Model m)
     {

    	 ProductDAOImpl obj=new ProductDAOImpl();
    	 ArrayList <Product>l=obj.displayProduct(cat);
    	
    	 m.addAttribute("productArr",l);
        return "Product";
     }

     @RequestMapping("/P")    
     public @ResponseBody String product1()
     {
        // return "Product";
    	 ProductDAO obj=new ProductDAO();
    	 String msg=obj.displayProduct();
    	 return msg;
     }*/
     
   /*  @RequestMapping("/P")    
     public @ResponseBody String  product1(Model m)
     {
    	 ProductDAO obj=new ProductDAO();
    	 ArrayList <Product>l=obj.displayProduct();
    	
    	 m.addAttribute("productArr",l);
  
    	 
    	 return "Product";
     }*/
     
     @RequestMapping("/Hand")
     public String hand()
     {
         return "Hand";
     }
     @RequestMapping("/Luggage")
     public String  luggage()
     {
         return "Luggage";
     }
     @RequestMapping("/Laptop")
     public String laptop()
     {
         return "Laptop";
     }
     
     @RequestMapping("/Page1")
     public String page1()
     {
         return "Page1";
     }
     
}
