package dao;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.AddressDto;

public class AddressDaoImple implements AddressDaoI {
	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;

	public void setDataSource(DataSource datasource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = datasource;
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public int addressAdd(AddressDto addressdto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int addressAdd = sqlSession.insert("dao.AddressDaoImple.addressAdd", addressdto);
			sqlSession.commit();
			return addressAdd;
		} catch (Exception e) {
			e.printStackTrace();
//			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}

	@Override
	public int addressDelete(int mno) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int del = sqlSession.delete("dao.AddressDaoImple.addressDelete", mno);
			sqlSession.commit();
			return del;			
		}catch(Exception e) {
			e.printStackTrace();
//			sqlSession.rollback();
		}finally {
			sqlSession.close();
		}
		return -1; 
	}

	@Override
	public List<AddressDto> selectAddress(String email) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.AddressDaoImple.selectAddress", email);
//			System.out.println("~~" + memberdto);
//			return addressdto;
		} finally {
			sqlSession.close();
		}
	}
}
