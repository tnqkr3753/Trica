package com.trica.service;

import com.trica.vo.MemberVO;
 
public interface MemberService {
	
	//회원가입 service 
	public int insertMember(MemberVO vo);
	
	//로그인 service  
	public MemberVO login(MemberVO vo);
} 
                 