package dao;



import java.util.List;

import dto.ProductDto;

public interface ProductDaoI {
	List<ProductDto> listKindProduct(String kind) throws Exception; // 상위카테고리(WOMAN, MAN, KIDS)
	List<ProductDto> subcategory(String subcategory) throws Exception; // 서브카테고리
	List<ProductDto> listSubcategory (String subcategory) throws Exception; // 서브카테고리
	List<ProductDto> productDetailList(String pseq) throws Exception; // 상품상세페이지
	List<ProductDto> searchName() throws Exception;
	//Product selectOne(Product product)throws Exception;
	//int update(Product product) throws Exception; // 상품수정
	//int insert(ProductDto productdto)throws Exception; // 상품등록
	//ArrayList<ProductDto> listKindProduct() throws Exception;

}

