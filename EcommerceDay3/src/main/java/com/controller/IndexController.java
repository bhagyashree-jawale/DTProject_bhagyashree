package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
 

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
     
     @RequestMapping("/Product")    
     public String product()
     {
        return "Product";
     }

     @RequestMapping("/P")    
     public @ResponseBody String product1()
     {
        // return "Product";
    	 ProductDAO obj=new ProductDAO();
    	 String msg=obj.displayProduct();
    	 return msg;
     }
     
     
     
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
