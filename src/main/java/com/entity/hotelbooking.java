package com.entity;

public class hotelbooking {
	
	private String bid;
	private String hid;
	private String cid;
	private String cname;
	private String ccontact;
	private String join_date;
	private String lave_date;
	
	
	
	public hotelbooking() {
		super();
		// TODO Auto-generated constructor stub
	}



	public hotelbooking(String hid, String cid, String cname, String ccontact, String join_date, String lave_date) {
		super();
		this.hid = hid;
		this.cid = cid;
		this.cname = cname;
		this.ccontact = ccontact;
		this.join_date = join_date;
		this.lave_date = lave_date;
	}



	public String getBid() {
		return bid;
	}



	public void setBid(String bid) {
		this.bid = bid;
	}



	public String getHid() {
		return hid;
	}



	public void setHid(String hid) {
		this.hid = hid;
	}



	public String getCid() {
		return cid;
	}



	public void setCid(String cid) {
		this.cid = cid;
	}



	public String getCname() {
		return cname;
	}



	public void setCname(String cname) {
		this.cname = cname;
	}



	public String getCcontact() {
		return ccontact;
	}



	public void setCcontact(String ccontact) {
		this.ccontact = ccontact;
	}



	public String getJoin_date() {
		return join_date;
	}



	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}



	public String getLave_date() {
		return lave_date;
	}



	public void setLave_date(String lave_date) {
		this.lave_date = lave_date;
	}
	
	
	
	
	
	
	
	
	
	

}
