package com.controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.DAO.MovieDAO;
import com.model.Movies;

@Service
public class MovieServiceImpl implements MovieService
{
	@Autowired
	private MovieDAO movieDao;
	
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)  
	public void addMovie(Movies movie) 
	{
		movieDao.addMovie(movie);		
	}	
	public List<Movies> listMovies() 
	{
		return movieDao.listMovies();  
	}

	public Movies getMovies(int movie_id) 
	{
		return movieDao.getMovies(movie_id);  
	}

	public void deleteMovie(Movies movie) 
	{
		movieDao.deleteMovie(movie);  		
	}

	public void editMovie(Movies movie) {
		movieDao.editMovie(movie);
		
	}
}
