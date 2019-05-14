package com.kosmo.room9.service;

// 해당 DTO 는 임시로 만들어 둔 것임 (테스트용도)
public class Room9DTO {
	private String no;
	private String rName;
	private String rAddr;
	private String payPhour;
	private String category;
	private String peoplecount;
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	public String getrAddr() {
		return rAddr;
	}
	public void setrAddr(String rAddr) {
		this.rAddr = rAddr;
	}
	public String getPayPhour() {
		return payPhour;
	}
	public void setPayPhour(String payPhour) {
		this.payPhour = payPhour;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPeoplecount() {
		return peoplecount;
	}
	public void setPeoplecount(String peoplecount) {
		this.peoplecount = peoplecount;
	}
}
