package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CartVo;
import com.javaex.vo.WineVo;

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

	// 장바구니 추가
	public int insert(CartVo cartVo) {
		System.out.println(cartVo);
		return sqlSession.insert("CartXml.insert", cartVo);
	}

	// 장바구니 삭제
	public void deleteByNo(CartVo cartVo) {
		sqlSession.delete("CartXml.deleteByNo", cartVo);
	}

	// 결제창 이동(장바구니 삭제)
	public void deleteAll(CartVo cartVo) {
		sqlSession.delete("CartXml.deleteAll", cartVo);
	}
	
	// 결제창 이동(와인재고 갯수만큼 감소)
	public void updateWineCount(CartVo cartVo) {
		System.out.println("cartVo : " + cartVo);
		sqlSession.update("WineXml.updateWineCount", cartVo);
	}

}
