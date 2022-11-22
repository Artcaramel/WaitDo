package dto;

import java.sql.Timestamp;

public class OrderDto {
	private int oseq;  // 주문하기를 눌렀을 때, 생성되는 주문 일련번호
	private String id; // 주문한 사람의 id (= 주문자명)
	private int odseq; // 주문하기를 눌렀을 때, 생성되는 상품별 주문일련번호
	private int pseq;  // 상품의 일련 번호
	private Timestamp indate; // 주문한 날짜
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	private String pname; // 상품명
	private String mname;
	private int price2;   // 상품의 가격
	private int quantity; // 상품의 수량 
	//private String state; // 주문한 상품의 처리상태 (1결제완료, 2상품준비중, 3배송시작, 4배송중, 5배송완료)
	private String result; // 1:미처리, 2:처리
	//-- 처리상태 변경은 '관리자 페이지'에서 수행 가능
	private String image;  // 주문한 상품의 대표이미지
	private String address1; // 회원정보 - 주소1
	private String address2; // 회원정보 - 주소2
	//private String zipcode;  // 회원정보 - 우편번호
	//private String cardnum;  // 회원정보 - 카드번호
	private String phone;    // 회원정보 - 휴대폰번호
	
	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPrice2() {
		return price2;
	}
	public void setPrice2(int price2) {
		this.price2 = price2;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
//	public String getCardnum() {
//		return cardnum;
//	}
//	public void setCardnum(String cardnum) {
//		this.cardnum = cardnum;
//	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getOseq() {
		return oseq;
	}
	public void setOseq(int oseq) {
		this.oseq = oseq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	public int getOdseq() {
		return odseq;
	}
	public void setOdseq(int odseq) {
		this.odseq = odseq;
	}
	public int getPseq() {
		return pseq;
	}
	public void setPseq(int pseq) {
		this.pseq = pseq;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	

}
