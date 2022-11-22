package dto;

import java.sql.Timestamp;

public class ProductDto {
	private int pseq;      // 상품일련번호
	private String name;   // 상품명
	private String kind;   // 카테고리(상품의 종류)
	private String subcategory; // 서브카테고리
	private int price1;    // 할인가
	private int price2;    // 정가
	private String content;// 상품설명
	private String color;  // 색상
	private String size;   // 사이즈
	private String image;  // 대표이미지
	private String image_detail;  // 상세이미지1
	private String image_detail2; // 상세이미지2
	private String image_detail3; // 상세이미지3
	private String image_detail4; // 상세이미지4
	private String activeyn;   // 상품 노출여부
	private int likecount;     // 좋아요 개수
	private Timestamp indate;  // 상품등록일
	private String searchName;
	
	public String getSearchName() {
		return searchName;
	}

	public ProductDto setSearchName(String searchName) {
		this.searchName = searchName;
		return this;
	}

	public String getSubcategory() {
		return subcategory;
	}
	
	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
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
	public String getImage_detail() {
		return image_detail;
	}
	public void setImage_detail(String image_detail) {
		this.image_detail = image_detail;
	}
	public String getImage_detail2() {
		return image_detail2;
	}
	public void setImage_detail2(String image_detail2) {
		this.image_detail2 = image_detail2;
	}
	public String getImage_detail3() {
		return image_detail3;
	}
	public void setImage_detail3(String image_detail3) {
		this.image_detail3 = image_detail3;
	}
	public String getImage_detail4() {
		return image_detail4;
	}
	public void setImage_detail4(String image_detail4) {
		this.image_detail4 = image_detail4;
	}
	
	public int getLikecount() {
		return likecount;
	}
	public void setLikecount(int likecount) {
		this.likecount = likecount;
	}
	public int getPseq() {
		return pseq;
	}
	public void setPseq(int pseq) {
		this.pseq = pseq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
		
	}
	public int getPrice1() {
		return price1;
	}
	public void setPrice1(int price1) {
		this.price1 = price1;
	}
	public int getPrice2() {
		return price2;
	}
	public void setPrice2(int price2) {
		this.price2 = price2;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getActiveyn() {
		return activeyn;
	}
	public void setActiveyn(String activeyn) {
		this.activeyn = activeyn;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
}