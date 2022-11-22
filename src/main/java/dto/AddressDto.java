package dto;

import java.sql.Timestamp;

public class AddressDto {
	private int mno;
	private String email;
	private String zipcode;
	private String address1;
	private String address2;
	private Timestamp indate;
	
	public int getMno() {
		return mno;
	}
	public AddressDto setMno(int mno) {
		this.mno = mno;
		return this;
	}
	public String getEmail() {
		return email;
	}
	public AddressDto setEmail(String email) {
		this.email = email;
		return this;
	}
	public String getZipcode() {
		return zipcode;
	}
	public AddressDto setZipcode(String zipcode) {
		this.zipcode = zipcode;
		return this;
	}
	public String getAddress1() {
		return address1;
	}
	public AddressDto setAddress1(String address1) {
		this.address1 = address1;
		return this;
	}
	public String getAddress2() {
		return address2;
	}
	public AddressDto setAddress2(String address2) {
		this.address2 = address2;
		return this;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public AddressDto setIndate(Timestamp indate) {
		this.indate = indate;
		return this;
	}
	
}
