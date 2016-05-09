package com.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.model.Movies;
import com.sun.swing.internal.plaf.metal.resources.metal;

@Repository
public class MovieDAOImpl implements MovieDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	 @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addMovie(Movies movie) 
	{
		 
		sessionFactory.getCurrentSession().saveOrUpdate(movie);
	//	 sessionFactory.openSession().saveOrUpdate(movie);
		
	//	Session s=sessionFactory.getCurrentSession();
	/*	 Session s=sessionFactory.openSession();
		System.out.println("add");
		Transaction t;
		t=s.beginTransaction();
		s.save(movie);
		t.commit();
		s.close();
		*/

	}

	 @SuppressWarnings("unchecked")
	public List<Movies> listMovies() {
		// TODO Auto-generated method stub
		return (List<Movies>) sessionFactory.openSession().createQuery("from Movies").list();  
	}

	@Override
	public Movies getMovies(int movie_id) {
		// TODO Auto-generated method stub
		//return (Movies) sessionFactory.getCurrentSession().get(Movies.class, movie_id);  
		return (Movies) sessionFactory.openSession().get(Movies.class, movie_id);
	}

	@Override
	public void deleteMovie(Movies movie) {
		//sessionFactory.getCurrentSession().createQuery("DELETE FROM Movies WHERE movie_id = "+movie.getMovie_id()).executeUpdate();  
		sessionFactory.openSession().createQuery("DELETE FROM Movies WHERE movie_id = "+movie.getMovie_id()).executeUpdate();  
	}


	public void editMovie(Movies m) {
		// TODO Auto-generated method stub
		
		sessionFactory.openSession().saveOrUpdate(m);
		//sessionFactory.getCurrentSession().saveOrUpdate(m);
		
	}

}
