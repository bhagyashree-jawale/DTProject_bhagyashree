package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.*;

@Controller
public class IndexController
{
	@Autowired
	 MovieService mService;
	 
	 @RequestMapping("/")
     public String index()
     {
		
         return "index";
     }

	 @RequestMapping("Login")
     public String login()
     {
         return "Login";
         
     }
	 @RequestMapping("Register")
     public String register()
     {
         return "Register";
     }

	 @RequestMapping("About")
     public String about()
     {
         return "About";
     }
	 
	 Movies movie=new Movies();

	 
	 @RequestMapping(value = "/AddMovie", method = RequestMethod.GET)  
     public ModelAndView  addMovie(@ModelAttribute("command")MoviesBean mBean,BindingResult result)
     {
    	 	  Map<String, Object> model = new HashMap<String, Object>();  
    	 	  model.put("movies",  prepareListofBean(mService.listMovies()));  
    	 	  return new ModelAndView("AddMovie", model);  
     }
	 
	@RequestMapping(value = "/SaveMovie", method = RequestMethod.GET)  
	public ModelAndView saveMovie(@ModelAttribute("command")MoviesBean mBean,BindingResult result)
	{  
			Movies m = prepareModel(mBean);  
			mService.addMovie(m);  
			return new ModelAndView("SaveMovie");  
	 } 
	
	/*	 System.out.println("In controller");
		 Movies m=new Movies();
		 m.setMovie_id(1);
		 m.setMovie_name("Sairat");
		 m.setCategory("Marathi");
		 m.setPrice(100);
		 m.setTime("10:00PM");
		 mService.addMovie(m);
         return "AddMovie";*/
     
	 
	@RequestMapping(value="/ViewMovie", method = RequestMethod.GET)  
	 public ModelAndView listMovies( Map<String, Object> model) 
	 {  
		  List <Movies> lst=mService.listMovies();
		  
		  return new ModelAndView("ViewMovie","movieList", lst);  
		  
	 } 
 
	@RequestMapping(value = "/DeleteMovie", method = RequestMethod.GET)  
	 public ModelAndView deleteMovie(@ModelAttribute("command")MoviesBean movieBean, BindingResult result)
	{  

	   mService.deleteMovie(prepareModel(movieBean));
	 
	   Map<String, Object> model = new HashMap<String, Object>();

	   model.put("movie", null);  
	   model.put("movies",  prepareListofBean(mService.listMovies()));

	   return new ModelAndView("DeleteMovie", model);  
	  }
	
	@RequestMapping(value = "/EditMovie", method = RequestMethod.GET)  
	 public ModelAndView editMovie(@ModelAttribute("command")MoviesBean moviesBean, BindingResult result) 
	 {  
	   Map<String, Object> model = new HashMap<String, Object>();  
	   model.put("movie", prepareMovieBean(mService.getMovies(moviesBean.getMovie_id())));  
	   model.put("movies",  prepareListofBean(mService.listMovies()));  
	   return new ModelAndView("EditMovie", model);  
	  }  
	
	@RequestMapping(value = "/EditSaveMovie", method = RequestMethod.GET)  
	public ModelAndView editSaveMovie(@ModelAttribute("command")MoviesBean mBean,BindingResult result)
	{  
			Movies m = prepareModel(mBean);  
			mService.editMovie(m);  
			return new ModelAndView("EditSaveMovie");  
	 } 
	 
	 private Movies prepareModel(MoviesBean mBean)
	 {  
		  Movies movie = new Movies();  
		  movie.setMovie_id(mBean.getMovie_id());  
		  movie.setMovie_name(mBean.getMovie_name());  
		  movie.setCategory(mBean.getCategory());  
		  movie.setPrice(mBean.getPrice());  
		  movie.setTime(mBean.getTime());  
		 
		  mBean.setMovie_id(0);  
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
			   bean.setMovie_id(m.getMovie_id());  
			   bean.setMovie_name(m.getMovie_name());  
			   bean.setCategory(m.getCategory());  
			   bean.setPrice(m.getPrice());  
			   bean.setTime(m.getTime());  
		   
		    beans.add(bean);  
		   }  
		  }  
		  return beans;  
		 } 
	private MoviesBean prepareMovieBean(Movies movie){  
		  MoviesBean bean = new MoviesBean();  
		  bean.setMovie_id(movie.getMovie_id());  
		  bean.setMovie_name(movie.getMovie_name());  
		  bean.setCategory(movie.getCategory());  
		  bean.setPrice(movie.getPrice());  
		  bean.setTime(movie.getTime());  
		  return bean;  
		 } 
}

