package com.entity;

public class travelerbooking {
	
	
	private String id;
	private String tid;
	private String cname;
	private String palce;
	private String to_palce;
	private String ccontact;
	private String b_date;
	private String cid;
	
	
	
	public travelerbooking() {
		super();
		// TODO Auto-generated constructor stub
	}



	public travelerbooking(String tid, String cname, String palce, String to_palce, String ccontact, String b_date,
			String cid) {
		super();
		this.tid = tid;
		this.cname = cname;
		this.palce = palce;
		this.to_palce = to_palce;
		this.ccontact = ccontact;
		this.b_date = b_date;
		this.cid = cid;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getTid() {
		return tid;
	}



	public void setTid(String tid) {
		this.tid = tid;
	}



	public String getCname() {
		return cname;
	}



	public void setCname(String cname) {
		this.cname = cname;
	}



	public String getPalce() {
		return palce;
	}



	public void setPalce(String palce) {
		this.palce = palce;
	}



	public String getTo_palce() {
		return to_palce;
	}



	public void setTo_palce(String to_palce) {
		this.to_palce = to_palce;
	}



	public String getCcontact() {
		return ccontact;
	}



	public void setCcontact(String ccontact) {
		this.ccontact = ccontact;
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
