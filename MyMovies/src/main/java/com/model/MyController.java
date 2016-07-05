package com.model;

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

import com.User.UserLogin;
import com.User.UserService;



@Controller
public class MyController
{
	@Autowired
	  ServletContext req;
	 
	 @Autowired
		MoviesService service;
	 
	 @RequestMapping("/")
   public String index()
   {
       return "index";
   }

	 @RequestMapping(value = "/Category")
   public String category()
   {
		
       return "Category";
       
   }
	 @RequestMapping("/SeatArrangement")
	   public String arrangement()
	   {
	       return "SeatArrangement";
	   }
	 
	 @RequestMapping(value = "/NowShow")
   public ModelAndView nowShow()
   {
      // return "NowShow";
		 List<Movies> movieList = service.getListNS();
		 // System.out.println("end view all");
		  return new ModelAndView("NowShow", "movieList", movieList);  
   }
	 
	 @RequestMapping(value = "/CommingSoon")
   public ModelAndView commingSoon()
   {
      // return "CommingSoon";
		 List<Movies> movieList = service.getListCS();
		 // System.out.println("end view all");
		  return new ModelAndView("CommingSoon", "movieList", movieList);  
   }
	 
	 @RequestMapping(value = "/Contact")
   public String contact()
   {
       return "Contact";
       
   }
	 @RequestMapping(value = "/Login")
   public String login()
   {
		// System.out.println("Login");
       return "Login";
       
   }
	 
	
	  @RequestMapping(value = "/admin/add", method = RequestMethod.GET)
   public ModelAndView addMovie(@ModelAttribute("command")Movies movieBean,BindingResult result)
   {
		 System.out.println("$$$$$$$$$$$$$$$$$$$$");
		  
		  ModelAndView model=new ModelAndView("add");
		  model.addObject("movie",movieBean);
		 // System.out.println("Hello1");
		  return model;
       
   }
    @RequestMapping(value="/admin/save",method=RequestMethod.POST)
		 
	  public ModelAndView saveMovie(@ModelAttribute("movie") Movies movieBean,BindingResult result) 
	  {
		 
		 System.out.println(movieBean.getMoviename());
		 
		  String p=req.getRealPath("/");
		  System.out.println("*****"+movieBean.getFile1());
		  String path=movieBean.getFilePath(p,req.getContextPath());
	
		  System.out.println("Context path"+req.getContextPath()+"############"+path); 
		  service.addMovie(movieBean);
		  System.out.println("end save");
		  return new ModelAndView("redirect:/movie/ViewAll");
	  }
	 /*@RequestMapping(value = "/add")  
     public ModelAndView  addMovie(@ModelAttribute("command")Movies mBean,BindingResult result)
     {
    	 	  Map<String, Object> model = new HashMap<String, Object>();  
    	 	  model.put("movie",  prepareListofBean(service.getList()));  
    	 	  return new ModelAndView("add", model);  
     }
	 
	 @RequestMapping(value="/save",method=RequestMethod.POST)
	 
	  public ModelAndView saveMovie(@ModelAttribute("movie") MoviesBean movieBean,BindingResult result) 
	  {
		 
		 System.out.println(movieBean.getMoviename());
		 
		  String p=req.getRealPath("/");
		  System.out.println("*****"+movieBean.getFile1());
		  String path=movieBean.getFilePath(p,req.getContextPath());
	
		  Movies m=prepareModel(movieBean);
		  System.out.println("Context path"+req.getContextPath()+"############"+path); 
		  service.addMovie(m);
		  //service.addMovie(movieBean);
		  return new ModelAndView("save");
	  }*/
	 
		 @RequestMapping("/movie/ViewAll")  
		 public ModelAndView viewAll()
		 {
			// System.out.println("in view all");
		  List<Movies> movieList = service.getList();
		 // System.out.println("end view all");
		  return new ModelAndView("ViewAll", "movieList", movieList);  

	}  
//	 @RequestMapping("/admin/ViewAllAdmin")  
//		 public ModelAndView viewAllAdmin()
//		 {
//			// System.out.println("in view all");
//		  List<Movies> movieList = service.getList();
//		 // System.out.println("end view all");
//		  return new ModelAndView("ViewAllAdmin", "movieList", movieList);  
//
//	}  
		 
		 @RequestMapping("/admin/delete")
		  public String deleteProduct(@RequestParam("movieid")int movieid)
		  {
			  service.deleteMovie(movieid);
			  return "redirect:/movie/ViewAll";
			  
		  }
		 @RequestMapping("/admin/EditMovie")  
		  public ModelAndView editMovie(@RequestParam int movieid, @ModelAttribute Movies movie) {  
		   Movies movieObject =service.getMoviebyId(movieid); 
		  // System.out.println("EditMovie:"+movieObject.getMoviename());
		   return new ModelAndView("EditMovie", "movie", movieObject);  
		  }  
		   
		  @RequestMapping("/admin/modifyMovie")  
		  public ModelAndView updateMovie(@ModelAttribute("movie") Movies movie,BindingResult result) 
		  {  
			  System.out.println("---------------"+movie.getMovieid());
			  String p=req.getRealPath("/");
			  System.out.println("*****"+movie.getFile1());
			  String path=movie.getFilePath(p,req.getContextPath());
		
			  System.out.println("Context path"+req.getContextPath()+"############"+path); 
			  service.updateMovie(movie);  
			  return new ModelAndView("redirect:/movie/ViewAll");  
   
		 }
		  
		  @RequestMapping("/ViewRecord")
		  public ModelAndView getRecord(@RequestParam int movieid,@ModelAttribute Movies movie) {  
					   Movies movieObject =service.getMoviebyId(movieid); 
					   System.out.println("view:"+movieObject.getMoviename());
					   return new ModelAndView("ViewRecord", "movieObject", movieObject);  
					  }  
		  
		  @RequestMapping("/ViewSearch")
		  public ModelAndView getRecords(@RequestParam String category,@ModelAttribute Movies movie) {  
					   List<Movies> p =service.getList1(category); 
					   //System.out.println("view:"+productObject.getPname());
					   return new ModelAndView("ViewAll", "movieList", p);  
					  }  
		  
		//---------------------------------Registration----------------------------------------	//
			 
			 
		  @Autowired
		 UserService userService;
		  
		  @RequestMapping(value="/saveUser", method=RequestMethod.POST)
		  public String addUser(@Valid @ModelAttribute("userData") UserLogin reg,BindingResult result)
		  {
			  
			  System.out.println("INside Save User");
			  if(result.hasErrors())
			  {
				return "personadd";  
			  }
			  else
			  {
				  userService.addUser(reg);
			  }
			  return "index";
		  }
			
		  @RequestMapping("/personadd")
		  public ModelAndView register()
		  {
			  UserLogin register=getUserObject();
			
			  ModelAndView model=new ModelAndView("personadd");
			 
			  model.addObject("userData", register);
			
			  return model;
		  }
		  @ModelAttribute("userData")
		  public UserLogin getUserObject()
		  {
			  return new UserLogin();
		  }
		  
		  
		  @RequestMapping(value="/Logout", method = RequestMethod.GET)
		  public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		      if (auth != null){    
		          new SecurityContextLogoutHandler().logout(request, response, auth);
		      }
		      return "redirect:/Login?logout";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
		  }

		  //--------------------------- buy ticket ---------------------------------
		  
		  @RequestMapping("/seatBook")
		  public String seatBook()
		  {
			  return "seatBook";
		  }
		  
		  @RequestMapping("/collectCustomerInfo")
		  public String custInfo()
		  {
			  return "collectCustomerInfo";
		  }
		  
		 
}

