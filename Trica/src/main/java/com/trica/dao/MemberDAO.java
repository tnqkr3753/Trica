package com.trica.dao;

import com.trica.vo.MemberVO;
 
public interface MemberDAO {
	
	//회원가입 
	public int insertMember(MemberVO vo);
	
	//로그인
	MemberVO login(MemberVO vo); 
	
	//회원정보 수정
	public int memberUpdate(MemberVO vo); 
 
}           
                             