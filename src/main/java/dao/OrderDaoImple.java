package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.CartDto;
import dto.OrderDto;

public class OrderDaoImple {
	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;
	public void setDataSource(DataSource datasource, SqlSessionFactory sqlSessionFactory) {	
		this.datasource = datasource;
		this.sqlSessionFactory = sqlSessionFactory;
	}
	 
	public int insert(List<CartDto> cartList, String id) throws Exception {
		int maxOseq = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int count = sqlSession.insert("dao.OrderDaoImple.insert", id);
			sqlSession.commit();
			int selectMaxOseq = 
					sqlSession.selectOne("dao.OrderDaoImple.selectMaxOseq", count);
			System.out.println(selectMaxOseq); // 여기서 받았다!
			for (CartDto cartVO : cartList) {
				//insertOrderDetail(cartVO, maxOseq);
					//http://localhost:8080/waitdo/cart/orderlist&oseq=1
				//insertOrderDetail(cartVO, Integer.parseInt(selectMaxOseq));
					//http://localhost:8080/waitdo/cart/orderlist&oseq=0
				insertOrderDetail(cartVO, selectMaxOseq); // int로 바꿔줘야 함 
				
			}				
			return selectMaxOseq; // 이게 있어야 주소값에서 0말고 값을 가지고 온다. oseq=count		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				sqlSession.close();
			 }catch(Exception e) {
		            e.printStackTrace();
		     }
		 }
		return maxOseq;
	}

	public OrderDto selectMaxOseq(int oseq) throws Exception { // 아이디를 매개변수로 넣어야 함 
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			OrderDto orderdto = sqlSession.selectOne("dao.OrderDaoImple.selectMaxOseq", oseq);
			//return sqlSession.selectList("dao.OrderDaoImple.selectMaxOseq", oseq);
			return orderdto;
		}finally {
		//System.out.println(oseq);
			sqlSession.close();
		}
	}  
//	public int insertOrderDetail(int maxOseq, int pseq, int quantity) throws Exception{  
	public void insertOrderDetail(CartDto cartVO, int maxOseq) throws Exception{  
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("oseq", maxOseq); 
		map.put("pseq", cartVO.getPseq());
		map.put("quantity", cartVO.getQuantity());
		try {
			int orderdetail = sqlSession.insert("dao.OrderDaoImple.insertOrderDetail", map);
			sqlSession.commit();		
			int updateCartResult = sqlSession.update("dao.CartDaoImple.updateCartResult", cartVO.getCseq());
			sqlSession.commit(); //카트의 result 값을 '2'로 변경한다 
								//	-> 장바구니에서 삭제된다(cart table에서 지워지고, cart view에서도 지워짐)		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
	public int updateCartResult(CartDto cartDto) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int updateResult = sqlSession.update("dao.CartDaoImple.updateCartResult", cartDto.getCseq());
			sqlSession.commit();
			return updateResult;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	
	public List<OrderDto> maxOseq(int oseq) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			List<OrderDto> orderlist = sqlSession.selectList("dao.OrderDaoImple.maxOseq", oseq);
			return orderlist;
		}finally {
			sqlSession.close();
		}
	}
	
	public int delete(OrderDto orderDto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.delete("dao.OrderDaoImple.delete", orderDto);
		}finally {
			sqlSession.close();
		}
	}	
	
	public List<OrderDto> MypageOrder(String id) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			List<OrderDto> mypageOrderList = sqlSession.selectList("dao.OrderDaoImple.MypageOrder", id);
			return mypageOrderList;
		}finally {
			sqlSession.close();
		}
	}
	
	public List<OrderDto> MypageOrderDetail(String id, int oseq) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			List<OrderDto> mypageOrderListDetail = sqlSession.selectList("dao.OrderDaoImple.MypageOrderDetail", oseq);
			return mypageOrderListDetail;
		}finally {
			sqlSession.close();
		}
	}

	
	
}