package dao;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.MemberDto;


public class MemberDaoImple implements MemberDaoI {

	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;

	public void setDataSource(DataSource datasource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = datasource;
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public MemberDto exist(String email, String pwd) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectOne("dao.MemberDaoImple.select", new MemberDto().setEmail(email).setPwd(pwd));
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public int insert(MemberDto memberdto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int signup = sqlSession.insert("dao.MemberDaoImple.insert", memberdto);
			sqlSession.commit();
			return signup;
		} catch (Exception e) {
			e.printStackTrace();
//			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}

	@Override
	public int updateEmail(MemberDto memberdto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int editemail = sqlSession.update("dao.MemberDaoImple.updateEmail", memberdto);
			sqlSession.commit();
			return editemail;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}

	@Override
	public int updatePwd(MemberDto memberdto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int editpwd = sqlSession.update("dao.MemberDaoImple.updatePwd", memberdto);
			sqlSession.commit();
			return editpwd;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	

	@Override
	public MemberDto selectOne(int mno) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			MemberDto memberdto = sqlSession.selectOne("dao.MemberDaoImple.selectOne", mno);
//			System.out.println("~~" + memberdto);
			return memberdto;
		} finally {
			sqlSession.close();
		}
	}
//	@Override
//	public MemberDto selectAddress(int mno) throws Exception {
//		SqlSession sqlSession = sqlSessionFactory.openSession();
//		try {
//			MemberDto memberdto = sqlSession.selectOne("dao.MemberDaoImple.selectAddress", mno);
////			System.out.println("~~" + memberdto);
//			return memberdto;
//		} finally {
//			sqlSession.close();
//		}
//	}
	@Override
	public MemberDto selectFindEmail(String name, String birth) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			MemberDto memberdto = sqlSession.selectOne("dao.MemberDaoImple.selectFindEmail", new MemberDto().setName(name).setBirth(birth));
//			System.out.println("~~" + memberdto);
			return memberdto;
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public MemberDto selectFindPwd(String email, String name, String birth) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			MemberDto memberdto = sqlSession.selectOne("dao.MemberDaoImple.selectFindEmail", new MemberDto()
					.setEmail(email).setName(name).setBirth(birth));
			return memberdto;
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public int delete(MemberDto memberdto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int count = sqlSession.update("dao.MemberDaoImple.delete", memberdto);
			sqlSession.commit(); // 데이터베이스에 정상적으로 수행하겠다.
			return count;
		} catch (Exception e) {
//			e.printStackTrace();
			sqlSession.rollback(); // 에러난다면 취소하겠다.
		} finally {
			sqlSession.close();
		}
		return -1; // 실패의 경우를 임의로 넣어둔것
	}

	@Override
	public MemberDto idcheck(String email) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			MemberDto memberdto = sqlSession.selectOne("dao.MemberDaoImple.idcheck", email);
			return memberdto;
		} finally {
			sqlSession.close();
		}

	}

//	@Override
//	public int addressAdd(MemberDto memberdto) throws Exception {
//		SqlSession sqlSession = sqlSessionFactory.openSession();
//		try {
//			int addressAdd = sqlSession.update("dao.MemberDaoImple.addressAdd", memberdto);
//			sqlSession.commit();
//			return addressAdd;
//		} catch (Exception e) {
//			sqlSession.rollback();
//		} finally {
//			sqlSession.close();
//		}
//		return -1;
//	}

	@Override
	public List<MemberDto> selectList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.MemberDaoImple.selectList");
		}finally {
			sqlSession.close();
		}
	}

	@Override
	public int adminDelete(int mno) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int del = sqlSession.delete("dao.MemberDaoImple.adminDelete", mno);
			sqlSession.commit();
			return del;			
		}catch(Exception e) {
			sqlSession.rollback();
		}finally {
			sqlSession.close();
		}
		return -1; 
		
	}

}
