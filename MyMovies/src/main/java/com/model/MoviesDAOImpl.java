package com.model;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;

import com.model.Movies;

@Repository
public class MoviesDAOImpl implements MoviesDAO
{
	@Autowired
    SessionFactory sessionFactory;
	
	@Transactional
	public List<Movies> getList() {
		//return (List<Movies>) sessionFactory.openSession().createQuery("from Movies").list();
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Movies> movieList = session.createQuery("from Movies") .list();  
		  session.close();  
		  return movieList;  
	}

	@Transactional
	public void addMovie(Movies movie) 
	{
		//sessionFactory.getCurrentSession().saveOrUpdate(movie);
		
	//	sessionFactory.openSession().saveOrUpdate(movie);
		
		
    // Transaction tx;
	//	System.out.println("session");
		 Session session=sessionFactory.openSession();
	//	 System.out.println("In session");
      // tx=session.beginTransaction();
        session.saveOrUpdate(movie);
   //     System.out.println("end session");
   //    tx.commit();
        session.flush();
        session.close();
	}

	@Transactional
	public void updateMovie(Movies movie) {
		//sessionFactory.openSession().saveOrUpdate(m);
		
		Session session=sessionFactory.openSession();
	        session.saveOrUpdate(movie);
	        session.flush();
	        session.close();
	}

	@Transactional
	public void deleteMovie(String movieid) {
		sessionFactory.openSession().createQuery("DELETE FROM Movies WHERE movieid = "+movieid).executeUpdate();  
	}

	@Transactional
	public Movies getMoviebyId(String movieid) {
		Session session = sessionFactory.openSession();  
		  Movies prod = (Movies) session.load(Movies.class, movieid);  
		  return prod;
	}

	@Transactional
	public List<Movies> getList1(String category) {
		Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Movies> ProductList = session.createQuery("from Movies where category= '"+ category +"'").list();  
		  session.close();  
		  return ProductList;  
		
	}

	@Transactional
	public List<Movies> getListNS() {
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Movies> movieList = session.createQuery("from Movies where releaseDate<=sysdate") .list();  
		  session.close();  
		  return movieList;
	}

	@Override
	public List<Movies> getListCS() {
		Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Movies> movieList = session.createQuery("from Movies where releaseDate>sysdate") .list();  
		  session.close();  
		  return movieList;
	}

}
