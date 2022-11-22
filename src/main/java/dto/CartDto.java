package dto;

import java.sql.Timestamp;

public class CartDto {
	private int cseq;
	private String id; // 사용자 ID Member email?
	private int pseq; // 주문한 상품의 pseq
	private String mname; // 사용자 이름
	private String pname; // 상품명
	private int quantity; // 수량
	private int price2; // 가격
	private String color; // 색상
	private String image; // 상품 대표이미지
	private String size; // 사이즈
	private Timestamp indate; // 장바구니에 담은 날짜
	private int result;
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}


	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public int getCseq() {
		return cseq;
	}

	public void setCseq(int cseq) {
		this.cseq = cseq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getPseq() {
		return pseq;
	}

	public void setPseq(int pseq) {
		this.pseq = pseq;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice2() {
		return price2;
	}

	public void setPrice2(int price2) {
		this.price2 = price2;
	}

	public Timestamp getIndate() {
		return indate;
	}

	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	   
}
