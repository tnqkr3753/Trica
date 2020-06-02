package com.trica.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trica.vo.MemberVO;
 
@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{
   
	@Autowired  
	private SqlSessionTemplate mybatis;
 
	@Override
	public int insertMember(MemberVO vo) {
		System.out.println("===>  MemberMapper insertMember() 호출");
		return mybatis.insert("MemberDAO.insertMember", vo);
	}

	@Override 
	public MemberVO login(MemberVO vo) {
		System.out.println("===>  MemberMapper login() 호출");
		return mybatis.selectOne("MemberDAO.login", vo);
	}
	      
}     
                