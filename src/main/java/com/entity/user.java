package com.entity;

public class user {
	
	private String cid;
	private String username;
	private String fullname;
	private String address1;
	private String phnumber;
	private String password;
	
	
	public user() {
		super();
		// TODO Auto-generated constructor stub
	}


	public user(String username, String fullname, String address1, String phnumber, String password) {
		super();
		this.username = username;
		this.fullname = fullname;
		this.address1 = address1;
		this.phnumber = phnumber;
		this.password = password;
	}


	public String getCid() {
		return cid;
	}


	public void setCid(String cid) {
		this.cid = cid;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getFullname() {
		return fullname;
	}


	public void setFullname(String fullname) {
		this.fullname = fullname;
	}


	public String getAddress1() {
		return address1;
	}


	public void setAddress1(String address1) {
		this.address1 = address1;
	}


	public String getPhnumber() {
		return phnumber;
	}


	public void setPhnumber(String phnumber) {
		this.phnumber = phnumber;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	

}
