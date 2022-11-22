package dao;

import java.util.List;

import dto.CartDto;

public interface CartDaoI {
	int insert(String id, int pseq, int quantity) throws Exception; //장바구니 담기
	List<CartDto> listCartProduct(String id) throws Exception; //장바구니 리스트
	int delete(int cseq) throws Exception; //장바구니 삭제
	void modifyCart(CartDto cartdto) throws Exception; //장바구니 수정
	int update(CartDto cartdto) throws Exception;
	int countCart(String id, int pseq)throws Exception; //장바구니 동일한 상품 레코드 확인
	void updateCart(CartDto cartdto) throws Exception; //장바구니 상품수량 변경
	int cartCount(String id) throws Exception;
}
