package com.entity;

public class guidbooking {
	private String id;
	private String gid;
	private String cname;
	private String ccontact;
	private String place;
	private String b_date;
	private String cid;
	
	
	public guidbooking() {
		super();
		// TODO Auto-generated constructor stub
	}


	public guidbooking(String gid, String cname, String ccontact, String place, String b_date, String cid) {
		super();
		this.gid = gid;
		this.cname = cname;
		this.ccontact = ccontact;
		this.place = place;
		this.b_date = b_date;
		this.cid = cid;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getGid() {
		return gid;
	}


	public void setGid(String gid) {
		this.gid = gid;
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


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}


	public String getB_date() {
		return b_date;
	}


	public void setB_date(String b_date) {
		this.b_date = b_date;
	}


	public String getCid() {
		return cid;
	}


	public void setCid(String cid) {
		this.cid = cid;
	}
	
	
	
	

}
