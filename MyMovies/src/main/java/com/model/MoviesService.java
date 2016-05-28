package com.model;

import java.util.List;

import com.model.Movies;

public interface MoviesService
{
	public List<Movies> getList();
	public void addMovie(Movies m);
	public void updateMovie(Movies m);
	public void deleteMovie(String movieid);
	public Movies getMoviebyId(String movieid);

	public List<Movies>getList1(String category);
	public List<Movies> getListNS();
	public List<Movies> getListCS();
}
