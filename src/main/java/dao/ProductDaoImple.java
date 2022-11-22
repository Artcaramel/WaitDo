package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.MemberDto;
import dto.ProductDto;

public class ProductDaoImple implements ProductDaoI{
	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;
	public void setDataSource(DataSource datasource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = datasource;
		this.sqlSessionFactory = sqlSessionFactory;
	}	
/*	@Override // 카테고리
	public List<ProductDto> listKindProduct(String kind) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.ProductDaoImple.listKindProduct", kind);
		}finally {
			sqlSession.close();
			}
		}
			*/	
	@Override // 카테고리
	public List<ProductDto> listKindProduct(String kind) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			List<ProductDto> product = sqlSession.selectList("dao.ProductDaoImple.listKindProduct", kind);
			//System.out.println(product);
			return product;
		}finally {
			sqlSession.close();
		}
	}
	
	@Override // 상품상세페이지
	public List<ProductDto> productDetailList(String pseq) throws Exception { 
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			List<ProductDto> product = sqlSession.selectList("dao.ProductDaoImple.productDetailList", pseq);
			//System.out.println(product);
			return product;
		}finally {
			sqlSession.close();
		}
	}
	@Override
	public List<ProductDto> subcategory(String subcategory) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			List<ProductDto> product = sqlSession.selectList("dao.ProductDaoImple.subcategoryProduct", subcategory);
			//System.out.println(product);
			return product;
		}finally {
			sqlSession.close();
		}
	}
	
	public List<ProductDto> subcategory(String kind, String subcategory) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("kind", kind);
		map.put("subcategory", subcategory);
		try {
			List<ProductDto> product = sqlSession.selectList("dao.ProductDaoImple.subcategory", map);
			//System.out.println(product);
			return product;
		}finally {
			sqlSession.close();
		}
	}
	@Override
	public List<ProductDto> listSubcategory(String subcategory) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<ProductDto> searchName() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.ProductDaoImple.searchList");
		}finally {
			sqlSession.close();
		}
		
		
//		@Override
//		public List<MemberDto> selectList() throws Exception {
//			SqlSession sqlSession = sqlSessionFactory.openSession();
//			try {
//				return sqlSession.selectList("dao.MemberDaoImple.selectList");
//			}finally {
//				sqlSession.close();
//			}
//		}
	}
}
