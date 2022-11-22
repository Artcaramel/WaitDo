package dao;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.QnaDto;

public class QnaDaoImple implements QnaDaoI{
	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;

	public void setDataSource(DataSource datasource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = datasource;
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public int insert(QnaDto qnadto) throws Exception {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			try {
				int qnainsert = sqlSession.insert("dao.QnaDaoImple.insert", qnadto);
				sqlSession.commit();
				return qnainsert;
			} catch (Exception e) {
				e.printStackTrace();
//				sqlSession.rollback();
			} finally {
				sqlSession.close();
			}
			return -1;
		}

	@Override
	public List<QnaDto> selectList(String id) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.QnaDaoImple.selectList", id);
		} finally {
			sqlSession.close();
		}
	}

	
	@Override
	public List<QnaDto> adminQnaList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.QnaDaoImple.adminQnaList");
		}finally {
			sqlSession.close();
		}
	}
	
	@Override
	public QnaDto qnaReplyList(int qseq) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			QnaDto qnadtos = sqlSession.selectOne("dao.QnaDaoImple.qnaReplyList", qseq);
			sqlSession.commit();
			return qnadtos;
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public int qnaReply(QnaDto qnadto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int reply = sqlSession.update("dao.QnaDaoImple.qnaRelpy", qnadto);
			sqlSession.commit();
			return reply;
		} catch (Exception e) {
			e.printStackTrace();
//			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	
	@Override
	public int qnaDelete(int qseq) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int del = sqlSession.delete("dao.QnaDaoImple.qnaDelete", qseq);
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
}