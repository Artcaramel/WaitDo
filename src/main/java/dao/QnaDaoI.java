package dao;

import java.util.List;

import dto.QnaDto;

public interface QnaDaoI {
	int insert(QnaDto qnadto)throws Exception;   // Qna 등록
	public List<QnaDto> selectList(String id) throws Exception;  // Qna 리스트
	public int qnaDelete(int qseq) throws Exception; // Qna 삭제
	public List<QnaDto> adminQnaList() throws Exception; // Qna 전체 리스트
	public QnaDto qnaReplyList(int qseq) throws Exception;
	public int qnaReply(QnaDto qnadto) throws Exception; // Qna Relpy (관리자 페이지)
}
