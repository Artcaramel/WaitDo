package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.CartDto;

public class CartDaoImple implements CartDaoI{
	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;
	public void setDataSource(DataSource datasource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = datasource;
		this.sqlSessionFactory = sqlSessionFactory;
	}	

	@Override // 장바구니 추가
	public int insert(String id, int pseq, int quantity) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id); // -> MySqlCartDaoI.xml 파일의 column 값과 동일해야 함
		map.put("pseq", pseq);
		map.put("quantity", quantity);	
		try {
			int count = sqlSession.insert("dao.CartDaoImple.insert", map);
			sqlSession.commit();
			return count;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return -1;
	}
	@Override // 장바구니 목록( = 카트뷰)
	public List<CartDto> listCartProduct(String id) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			List<CartDto> cartview = sqlSession.selectList("dao.CartDaoImple.listCartProduct", id);
			return cartview;
		}finally {
			sqlSession.close();
		}
	}
	
	@Override // 장바구니 삭제 
	public int delete(int cseq) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int count = sqlSession.delete("dao.CartDaoImple.delete", cseq);
			sqlSession.commit();
			return count;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return -1;
	}

	@Override
	public int update(CartDto cartdto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.update("dao.CartDaoImple.updateCartResult", cartdto);
		}finally {
			sqlSession.close();
		}
	}
	public int updateCart(String id, int pseq, int quantity,int quantity2) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object>map=new HashMap<String,Object>();
		map.put("pseq", pseq);
		map.put("id", id);
		int sum = quantity+quantity2;
		map.put("quantity", sum);
		try {
			//update
			int count=sqlSession.update("dao.CartDaoImple.updateCart",map);
			sqlSession.commit();	
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}	
		return -1;
	}
	
	public CartDto select(CartDto cartlist) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectOne("dao.CartDaoImple.selectOne", cartlist);

		} finally {
			sqlSession.close();
		}
	}
	@Override // 장바구니 수정
	public void modifyCart(CartDto cartdto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.update("dao.CartDaoImple.modifyCart", cartdto);
	}

	@Override // 장바구니 동일한 상품 레코드 확인
	public int countCart(String id, int pseq) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id); // -> MySqlCartDaoI.xml 파일의 column 값과 동일해야 함
		map.put("pseq", pseq);
		return sqlSession.selectOne("dao.CartDaoImple.countCart", map);
	}

	@Override // 장바구니 수량 변경
	public void updateCart(CartDto cartdto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.update("dao.CartDaoImple.updateCart", cartdto);		
	}

	public int updateqQuantity(String id, int pseq, int quantity) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object>map=new HashMap<String,Object>();
		map.put("id", id);
		map.put("pseq", pseq);
		map.put("quantity", quantity);
		try {
			int count=sqlSession.update("dao.CartDaoImple.updateCart",map);
			sqlSession.commit();	
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}	
		return -1;
	}
	
	public int cartCount(String id) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectOne("dao.CartDaoImple.cartCount", id);

		} finally {
			sqlSession.close();
		}
	}
		
}
