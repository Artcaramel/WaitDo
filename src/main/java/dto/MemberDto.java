package dto;

import java.sql.Timestamp;

public class MemberDto {
	private int mno;
	private String email;
	private String pwd;
	private String name;
	private String birth;
	private String phone;
	private String useyn;
	private Timestamp indate;
	private String adminyn;
	
	public int getMno() {
		return mno;
	}
	public MemberDto setMno(int mno) {
		this.mno = mno;
		return this;
	}
	
	public String getEmail() {
		return email;
	}
	public MemberDto setEmail(String email) {
		this.email = email;
		return this;
	}
	public String getPwd() {
		return pwd;
	}
	public MemberDto setPwd(String pwd) {
		this.pwd = pwd;
		return this;
	}
	public String getName() {
		return name;
	}
	public MemberDto setName(String name) {
		this.name = name;
		return this;
	}
	public String getBirth() {
		return birth;
	}
	public MemberDto setBirth(String birth) {
		this.birth = birth;
		return this;
	}
	public String getPhone() {
		return phone;
	}
	public MemberDto setPhone(String phone) {
		this.phone = phone;
		return this;
	}
	public String getUseyn() {
		return useyn;
	}
	public MemberDto setUseyn(String useyn) {
		this.useyn = useyn;
		return this;
	}	
	
	public Timestamp getIndate() {
		return indate;
	}
	public MemberDto setIndate(Timestamp indate) {
		this.indate = indate;
		return this;
	}
	public String getAdminyn() {
		return adminyn;
	}
	public MemberDto setAdminyn(String adminyn) {
		this.adminyn = adminyn;
		return this;
	}
	
}
