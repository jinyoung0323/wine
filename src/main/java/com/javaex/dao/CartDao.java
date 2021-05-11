package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CartVo;

@Repository
public class CartDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 장바구니 리스트 불러오기
	public List<CartVo> getList() {
		System.out.println("----> sqlSession.selectList()");
		System.out.println(sqlSession);
		
		return sqlSession.selectList("CartXml.selectList");
		
	}


}
