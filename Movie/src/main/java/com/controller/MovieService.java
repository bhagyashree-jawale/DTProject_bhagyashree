package com.controller;

import java.util.List;

import com.model.Movies;

public interface MovieService 
{
	public void addMovie(Movies m);
	public List<Movies> listMovies();
	public Movies getMovies(int movie_id);  
	public void deleteMovie(Movies movie);  
	public void editMovie(Movies m);

}
