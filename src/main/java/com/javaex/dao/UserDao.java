package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;

	// 회원가입
	public int insert(UserVo vo) {
		System.out.println(vo);
		return sqlSession.insert("UserXml.insert", vo);
	}
	
	// 로그인
	public UserVo login(UserVo userVo) {
		return sqlSession.selectOne("UserXml.login", userVo);
	}

	// 수정
	public int update(UserVo userVo) {
		System.out.println(userVo);
		return sqlSession.update("UserXml.update", userVo);
	}

	// 이메일 찾기
	public UserVo searchemail(UserVo userVo) {
		System.out.println(userVo);
		
		return sqlSession.selectOne("UserXml.doublecheck", userVo);
	}
}
