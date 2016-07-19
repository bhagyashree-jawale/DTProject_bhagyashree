package com.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.model.Blog;
import com.model.UserLogin;
import com.service.BlogService;
import com.service.UserService;

@Controller
public class MyController
{
	@Autowired
	  ServletContext req;
	 
	 @Autowired
		BlogService service;

	@RequestMapping("/")
	public String showMessage() 
	{
			return "Login";
	}
	
	@RequestMapping("/index")
	public String homePage() 
	{
			return "index";
	}
	
	@RequestMapping("/BlogView")
	public ModelAndView viewBlog() 
	{
		 // System.out.println("in view all");
		  List<Blog> blogList = service.getList();
		 // System.out.println("end view all");
		  return new ModelAndView("BlogView", "blogList", blogList);  

	}  
	
	@RequestMapping("/admin/blogViewApprove")
	public ModelAndView viewBlogApprove() 
	{
		 // System.out.println("in view all");
		  List<Blog> blogList = service.getListApprove();
		 // System.out.println("end view all");
		  return new ModelAndView("BlogViewApprove", "blogList", blogList);  

	}  
		 
	 @RequestMapping(value = "/BlogAdd", method = RequestMethod.GET)
	   public ModelAndView addBlog(@ModelAttribute("command")Blog blogBean,BindingResult result)
	   {
			 System.out.println("$$$$$$$$$$$$$$$$$$$$");
			  
			  ModelAndView model=new ModelAndView("BlogAdd");
			  model.addObject("blog",blogBean);
			 // System.out.println("Hello1");
			  return model;
	       
	   }

	 @RequestMapping(value="/BlogSave",method=RequestMethod.POST)
	 
	  public ModelAndView saveBlog(@ModelAttribute("blog") Blog blogBean,BindingResult result) 
	  {
		  service.addBlog(blogBean);
		  return new ModelAndView("BlogAdd");
	  }
	 
	 @RequestMapping("/admin/BlogDelete")
	  public String deleteBlog(@RequestParam("blogid")int blogid)
	  {
		  service.deleteBlog(blogid);
		  return "redirect:ViewAll";
		  
	  }
	
	 @RequestMapping("/admin/blogApprove")  
	  public ModelAndView approveBlog(@RequestParam int blogid, @ModelAttribute Blog blog) {  
	   Blog blogObject =service.getBlogbyId(blogid);
	  // System.out.println("EditMovie:"+movieObject.getMoviename());
	   return new ModelAndView("BlogApprove", "blog", blogObject);  
	  }  
	 
	 @RequestMapping("/admin/updateBlog")  
	  public ModelAndView updateBlog(@ModelAttribute("blog") Blog blog,BindingResult result) 
	  {  
		   service.approveBlog(blog); 
		  return new ModelAndView("redirect:BlogView");  

	 }
	 
	 @RequestMapping("/BlogViewRecord")
	  public ModelAndView getRecord(@RequestParam int blogid,@ModelAttribute Blog blog) { 
		 			System.out.println("Hello");
				   Blog blogObject =service.getBlogbyId(blogid); 
				   System.out.println("Hello");
				   return new ModelAndView("BlogViewRecord", "blogObject", blogObject);  
				  }  
	 
	//---------------------------------Registration----------------------------------------	//
	 
	 
//	  @Autowired
//	 UserService userService;
//	  
////	  @RequestMapping(value = "/Login")
////	   public String login()
////	   {
////			// System.out.println("Login");
////	       return "Login";
////	       
////	   }
//	  
//	  @RequestMapping(value="/saveUser", method=RequestMethod.POST)
//	  public String addUser(@Valid @ModelAttribute("userData") UserLogin reg,BindingResult result)
//	  {
//		  
//		  System.out.println("INside Save User");
//		  if(result.hasErrors())
//		  {
//			return "Register";  
//		  }
//		  else
//		  {
//			  userService.addUser(reg);
//		  }
//		  return "index";
//	  }
//		
//	  @RequestMapping("/Register")
//	  public ModelAndView register()
//	  {
//		  UserLogin register=getUserObject();
//		
//		  ModelAndView model=new ModelAndView("Register");
//		 
//		  model.addObject("userData", register);
//		
//		  return model;
//	  }
//	  @ModelAttribute("userData")
//	  public UserLogin getUserObject()
//	  {
//		  return new UserLogin();
//	  }
//	  
//	  
//	  @RequestMapping(value="/Logout", method = RequestMethod.GET)
//	  public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
//	      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//	      if (auth != null){    
//	          new SecurityContextLogoutHandler().logout(request, response, auth);
//	      }
//	      return "redirect:/Login?logout";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
//	  }

}
