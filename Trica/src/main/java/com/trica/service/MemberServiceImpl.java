package com.trica.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trica.vo.MemberVO;
import com.trica.dao.MemberDAO;

@Service("memberService") 
public class MemberServiceImpl implements MemberService {
	 
	@Autowired 
	private MemberDAO memberDAO;  
	
	//회원가입 
	@Override
	public int insertMember(MemberVO vo) 
	{
		return memberDAO.insertMember(vo);
	}      
	   
	//로그인 
	@Override
	public MemberVO login(MemberVO vo)  
	{ 
		return memberDAO.login(vo);  
	}

	@Override
	public int memberUpdate(MemberVO vo)
	{  
		return memberDAO.memberUpdate(vo); 
	}
	 
}          
         