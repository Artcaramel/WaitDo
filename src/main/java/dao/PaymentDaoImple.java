package dao;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.PaymentDto;

public class PaymentDaoImple {
	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;
	
	public void setDataSource(DataSource datasource, SqlSessionFactory sqlSessionFactory) {	
		this.datasource = datasource;
		this.sqlSessionFactory = sqlSessionFactory;		
	}
	
	public int insertPayment(PaymentDto paymentdto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int count = sqlSession.insert("dao.PaymentDaoImple.insertPayment", paymentdto);
			sqlSession.commit();
			return count;
		}catch (Exception e) {
			e.printStackTrace();
//			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}	
	
	public List<PaymentDto> selectPayment() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.PaymentDaoImple.selectPayment");
		} finally {
			sqlSession.close();
		}
	}
}
