package com.mall.dto;

public class MemberVO {
	private String userid;
	private String pwd;
	private String name;
	private String phone;
	private String email;
	private int logintype;
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getLogintype() {
		return logintype;
	}
	public void setLogintype(int logintype) {
		this.logintype = logintype;
	}
	
	@Override
	public String toString() {
		return "MemberVO [userid=" + userid + ", pwd=" + pwd + ", name=" + name + ", phone=" + phone + ", email="
				+ email + ", logintype=" + logintype + "]";
	}
}
