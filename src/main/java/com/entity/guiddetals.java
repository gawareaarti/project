package com.entity;

public class guiddetals {

	private String id;
	private String gname;
	private String gplace;
	private String gcontacet;
	private String rate1;
	private String rate_group;
	private String password;

	
	public guiddetals() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getPassword() {
		return password;
	}





	public void setPassword(String password) {
		this.password = password;
	}





	public guiddetals(String gname, String gplace, String gcontacet, String rate1, String rate_group, String password) {
		super();
		this.gname = gname;
		this.gplace = gplace;
		this.gcontacet = gcontacet;
		this.rate1 = rate1;
		this.rate_group = rate_group;
		this.password = password;
	}





	public String getId() {
		return id;
		
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getGname() {
		return gname;
	}


	public void setGname(String gname) {
		this.gname = gname;
	}


	public String getGplace() {
		return gplace;
	}


	public void setGplace(String gplace) {
		this.gplace = gplace;
	}


	public String getGcontacet() {
		return gcontacet;
	}


	public void setGcontacet(String gcontacet) {
		this.gcontacet = gcontacet;
	}


	public String getRate1() {
		return rate1;
	}


	public void setRate1(String rate1) {
		this.rate1 = rate1;
	}


	public String getRate_group() {
		return rate_group;
	}


	public void setRate_group(String rate_group) {
		this.rate_group = rate_group;
	}
	
	
	
}
