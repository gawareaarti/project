package com.entity;

public class hoteldetals {
	
	private int hid;
	private String hotelname;
	private String manager;
	private String contact;
	private String address1;
	private String rate1;
	private String rate2;
	private String rate3;
	private String rate4;
	private String password;
	
	
	public hoteldetals() {
		super();
		
	}


	
	
	
	public hoteldetals(int hid, String hotelname, String manager, String contact, String address1, String rate1,
			String rate2, String rate3, String rate4, String password) {
		super();
		this.hid = hid;
		this.hotelname = hotelname;
		this.manager = manager;
		this.contact = contact;
		this.address1 = address1;
		this.rate1 = rate1;
		this.rate2 = rate2;
		this.rate3 = rate3;
		this.rate4 = rate4;
		this.password = password;
	}





	public hoteldetals(String hotelname, String manager, String contact, String address1, String rate1, String rate2,
			String rate3, String rate4,String password) {
		super();
		this.hotelname = hotelname;
		this.manager = manager;
		this.contact = contact;
		this.address1 = address1;
		this.rate1 = rate1;
		this.rate2 = rate2;
		this.rate3 = rate3;
		this.rate4 = rate4;
		this.password=password;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public int getHid() {
		return hid;
	}


	public void setHid(int hid) {
		this.hid = hid;
	}


	public String getHotelname() {
		return hotelname;
	}


	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}


	public String getManager() {
		return manager;
	}


	public void setManager(String manager) {
		this.manager = manager;
	}


	public String getContact() {
		return contact;
	}


	public void setContact(String contact) {
		this.contact = contact;
	}


	public String getAddress1() {
		return address1;
	}


	public void setAddress1(String address1) {
		this.address1 = address1;
	}


	public String getRate1() {
		return rate1;
	}


	public void setRate1(String rate1) {
		this.rate1 = rate1;
	}


	public String getRate2() {
		return rate2;
	}


	public void setRate2(String rate2) {
		this.rate2 = rate2;
	}


	public String getRate3() {
		return rate3;
	}


	public void setRate3(String rate3) {
		this.rate3 = rate3;
	}


	public String getRate4() {
		return rate4;
	}


	public void setRate4(String rate4) {
		this.rate4 = rate4;
	}
    
	
	





}
