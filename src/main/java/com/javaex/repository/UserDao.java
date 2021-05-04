package com.javaex.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	//login
	public UserVo login(UserVo userVo) {
		System.out.println("login");
		return sqlSession.selectOne("users.login", userVo);
	}

}
