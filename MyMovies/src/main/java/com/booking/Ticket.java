package com.booking;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Ticket {
	@Id
	@GeneratedValue
	int ticketid;
	@Column
	float price;
	@Column
	int movieshowid;
	@Column
	int seatid;
	public int getTicketid() {
		return ticketid;
	}
	public void setTicketid(int ticketid) {
		this.ticketid = ticketid;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getMovieshowid() {
		return movieshowid;
	}
	public void setMovieshowid(int movieshowid) {
		this.movieshowid = movieshowid;
	}
	public int getSeatid() {
		return seatid;
	}
	public void setSeatid(int seatid) {
		this.seatid = seatid;
	}
}
