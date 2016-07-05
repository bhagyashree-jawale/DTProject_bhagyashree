package com.booking;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Row {
	@Id
	@GeneratedValue
	int rowid;
	@Column
	String rowname;
	public int getRowid() {
		return rowid;
	}
	public void setRowid(int rowid) {
		this.rowid = rowid;
	}
	public String getRowname() {
		return rowname;
	}
	public void setRowname(String rowname) {
		this.rowname = rowname;
	}
}
