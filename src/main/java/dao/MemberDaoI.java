package dao;



import java.util.List;

import dto.MemberDto;

public interface MemberDaoI {
	MemberDto exist(String email, String pwd)throws Exception;
	int insert(MemberDto memberdto)throws Exception;
//	int addressAdd(MemberDto memberdto)throws Exception;
	int updateEmail(MemberDto memberdto)throws Exception;
	int updatePwd(MemberDto memberdto)throws Exception;
//	int addressDelete(MemberDto memberdto)throws Exception;
	public MemberDto selectOne(int mno) throws Exception;
	int delete(MemberDto memberdto) throws Exception;
	MemberDto idcheck(String email) throws Exception;
	List<MemberDto> selectList() throws Exception;
//	public MemberDto selectAddress(int mno) throws Exception;    // 주소값 확인
	public MemberDto selectFindEmail(String name, String birth) throws Exception; // 이메일 찾기
	public MemberDto selectFindPwd(String email, String name , String birth) throws Exception; // 비밀번호 찾기
	public int adminDelete(int mno) throws Exception;



}
