package com.kosmo.room9.service;



public class NoticeDTO {
	private String r_category;
	private String r_title;
	private java.sql.Date r_postdate;
	public String getR_category() {
		return r_category;
	}
	public void setR_category(String r_category) {
		this.r_category = r_category;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public java.sql.Date getR_postdate() {
		return r_postdate;
	}
	public void setR_postdate(java.sql.Date r_postdate) {
		this.r_postdate = r_postdate;
	}

}
