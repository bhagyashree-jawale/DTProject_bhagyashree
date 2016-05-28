package com.model;

import java.util.List;
import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
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
	 
	
	  @RequestMapping(value = "/add", method = RequestMethod.GET)
   public ModelAndView addMovie(@ModelAttribute("command")Movies movieBean,BindingResult result)
   {
		 System.out.println("$$$$$$$$$$$$$$$$$$$$");
		  
		  ModelAndView model=new ModelAndView("add");
		  model.addObject("movie",movieBean);
		 // System.out.println("Hello1");
		  return model;
       
   }
    @RequestMapping(value="/save",method=RequestMethod.POST)
		 
	  public ModelAndView saveMovie(@ModelAttribute("movie") Movies movieBean,BindingResult result) 
	  {
		 
		 System.out.println(movieBean.getMoviename());
		 
		  String p=req.getRealPath("/");
		  System.out.println("*****"+movieBean.getFile1());
		  String path=movieBean.getFilePath(p,req.getContextPath());
	
		  System.out.println("Context path"+req.getContextPath()+"############"+path); 
		  service.addMovie(movieBean);
		  System.out.println("end save");
		  return new ModelAndView("AdminHome");
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
	 
		 @RequestMapping("/ViewAll")  
		 public ModelAndView viewAll()
		 {
			// System.out.println("in view all");
		  List<Movies> movieList = service.getList();
		 // System.out.println("end view all");
		  return new ModelAndView("ViewAll", "movieList", movieList);  

	}  
	 @RequestMapping("/ViewAllAdmin")  
		 public ModelAndView viewAllAdmin()
		 {
			// System.out.println("in view all");
		  List<Movies> movieList = service.getList();
		 // System.out.println("end view all");
		  return new ModelAndView("ViewAllAdmin", "movieList", movieList);  

	}  
		 
		 @RequestMapping("/delete")
		  public String deleteProduct(@RequestParam("movieid")String movieid)
		  {
			  service.deleteMovie(movieid);
			  return "redirect:ViewAll";
			  
		  }
		 @RequestMapping("/EditMovie")  
		  public ModelAndView editMovie(@RequestParam String movieid, @ModelAttribute Movies movie) {  
		   Movies movieObject =service.getMoviebyId(movieid); 
		  // System.out.println("EditMovie:"+movieObject.getMoviename());
		   return new ModelAndView("EditMovie", "movie", movieObject);  
		  }  
		   
		  @RequestMapping("/updateMovie")  
		  public ModelAndView updateMovie(@ModelAttribute Movies movie) 
		  {  
			 // System.out.println(""+movie.getMovieid());
			  String p=req.getRealPath("/");
			//  System.out.println("*****"+movie.getFile1());
			  String path=movie.getFilePath(p,req.getContextPath());
		
			//  System.out.println("Context path"+req.getContextPath()+"############"+path); 
			  service.updateMovie(movie);  
			  return new ModelAndView("redirect:ViewAll");  
   
		 }
	/*	  private Movies prepareModel(MoviesBean mBean)
			 {  
				  Movies movie = new Movies();  
				  movie.setMovieid(mBean.getMovieid());  
				  movie.setMoviename(mBean.getMoviename());  
				  movie.setCategory(mBean.getCategory());  
				  movie.setPrice(mBean.getPrice());  
				  movie.setActor(mBean.getActor()); 
				  movie.setActress(mBean.getActress());
				  movie.setDirector(mBean.getDirector());
				  movie.setFpath(mBean.getFpath());
				//  mBean.setMovie_id("");  
				  return movie;  
			}  
			
			private List<MoviesBean> prepareListofBean(List<Movies> movies)
			{  
				  List<MoviesBean> beans = null;  
				  if(movies != null && !movies.isEmpty()){  
				   beans = new ArrayList<MoviesBean>();  
				   MoviesBean bean = null;  
				   for(Movies m : movies)
				   {  
					   bean = new MoviesBean();  
					   bean.setMovieid(m.getMovieid());  
					   bean.setMoviename(m.getMoviename());  
					   bean.setCategory(m.getCategory());  
					   bean.setPrice(m.getPrice());  
					   bean.setDirector(m.getDirector());
					   bean.setActor(m.getActor());
					   bean.setActress(m.getActress());
					   
					   bean.setFpath(m.getFpath());
				   
				    beans.add(bean);  
				   }  
				  }  
				  return beans;  
				 } 
			private MoviesBean prepareMovieBean(Movies movie){  
				MoviesBean  bean = new MoviesBean();  
				   bean.setMovieid(movie.getMovieid());  
				   bean.setMoviename(movie.getMoviename());  
				   bean.setCategory(movie.getCategory());  
				   bean.setPrice(movie.getPrice());  
				   bean.setDirector(movie.getDirector());
				   bean.setActor(movie.getActor());
				   bean.setActress(movie.getActress());
				   
				   bean.setFpath(movie.getFpath());
				  return bean;  
				*/
		  
		  @RequestMapping("/ViewRecord")
		  public ModelAndView getRecord(@RequestParam String movieid,@ModelAttribute Movies movie) {  
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
			  System.out.println("In register1");
			  ModelAndView model=new ModelAndView("personadd");
			  System.out.println("In register2");
			//  model.addObject(register);
			  System.out.println("In register3");
			  model.addObject("userData", register);
			  System.out.println("In register4");
			  return model;
		  }
		  @ModelAttribute("userData")
		  public UserLogin getUserObject()
		  {
			  return new UserLogin();
		  }
		  
		  @RequestMapping("/AdminHome")
		  public String admin()
		  {
			  return "AdminHome";
		  }

}

