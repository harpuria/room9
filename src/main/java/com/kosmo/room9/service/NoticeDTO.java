package com.kosmo.room9.service;

public class NoticeDTO {
	private String no;
	private String r_title;
	private String r_content;
	private java.sql.Date r_postdate;
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public java.sql.Date getR_postdate() {
		return r_postdate;
	}
	public void setR_postdate(java.sql.Date r_postdate) {
		this.r_postdate = r_postdate;
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
}
