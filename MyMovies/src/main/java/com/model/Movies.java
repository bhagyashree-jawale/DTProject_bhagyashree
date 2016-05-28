package com.model;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Movies 
{	@Id
	@Column
	private String movieid;
	
	@Column
	private String moviename;

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Column
	private String price;
	@Column
	private String actor;
	@Column
	private String actress;
     @Column
    private String director;
     @Column
     private String category;
     @Column
    private String fpath;
     
     @Column
 
     private Date releaseDate;
      
   public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

public String getFpath() {
		return fpath;
	}

	public void setFpath(String fpath) {
		this.fpath = fpath;
	}

transient private MultipartFile file1;

public String getMovieid() {
	return movieid;
}

public void setMovieid(String movieid) {
	this.movieid = movieid;
}

public String getMoviename() {
	return moviename;
}

public void setMoviename(String moviename) {
	this.moviename = moviename;
}


public String getPrice() {
	return price;
}

public void setPrice(String price) {
	this.price = price;
}

public String getActor() {
	return actor;
}

public void setActor(String actor) {
	this.actor = actor;
}

public String getActress() {
	return actress;
}

public void setActress(String actress) {
	this.actress = actress;
}

public String getDirector() {
	return director;
}

public void setDirector(String director) {
	this.director = director;
}

public MultipartFile getFile1() {
	return file1;
}

public void setFile1(MultipartFile file1) {
	this.file1 = file1;
}

	public  String getFilePath(String path1,String contextpath)
	{	
		String fileName = null;
		if (!file1.isEmpty()) 
		{
	        try 
	        {       	
	        	
	            fileName = file1.getOriginalFilename();
	            byte[] bytes = file1.getBytes();
	            	String npath=path1+"\\resources\\images\\"+ fileName;
	        
	    				BufferedOutputStream buffStream = 
	                    new BufferedOutputStream(new FileOutputStream(new File(npath)));
	            buffStream.write(bytes);
	            buffStream.close();
	           String dbfilename=contextpath+"/resources/images/"+fileName;
	            
	            this.setFpath(dbfilename);
	            return dbfilename;
	        }
	        catch (Exception e) 
	        {
	            return "You failed to upload " + fileName + ": " + e.getMessage();
	        }
	    } 
		else 
		{
			return "Unable to upload. File is empty.";
		}
	}
	
}


