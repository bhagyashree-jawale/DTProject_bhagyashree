package com.booking;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Seat
{
	@Id
	@GeneratedValue
	int seatid;
	@Column
	int seatnumber;
	@Column
	String rowname;
	@Column
	String hallid;
	public int getSeatid() {
		return seatid;
	}
	public void setSeatid(int seatid) {
		this.seatid = seatid;
	}
	public int getSeatnumber() {
		return seatnumber;
	}
	public void setSeatnumber(int seatnumber) {
		this.seatnumber = seatnumber;
	}
	public String getRowname() {
		return rowname;
	}
	public void setRowname(String rowname) {
		this.rowname = rowname;
	}
	public String getHallid() {
		return hallid;
	}
	public void setHallid(String hallid) {
		this.hallid = hallid;
	}
}
