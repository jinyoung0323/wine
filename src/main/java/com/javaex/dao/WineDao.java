package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.WineDescriptionVo;
import com.javaex.vo.WineVo;

@Repository
public class WineDao {

	@Autowired
	private SqlSession sqlSession;

	// 와인리스트 불러오기
	public List<WineVo> getList() {
		System.out.println("----> sqlSession.selectList()");
		System.out.println(sqlSession);

		return sqlSession.selectList("WineXml.selectList");
	}

	// 와인 검색
	public List<WineVo> getSearchByKeyword(String search_type, String keyword) {
		System.out.println("----> sqlSession.selectList()");
		System.out.println(sqlSession);
		WineVo vo = new WineVo(search_type, keyword);

		return sqlSession.selectList("WineXml.searchByKeyword", vo);
	}

	// 와인리스트 불러오기
	public List<WineVo> getOrderByWinelist(String order_by_type) {
		System.out.println("----> sqlSession.selectList()");
		System.out.println(sqlSession);
		WineVo wineVo = new WineVo(order_by_type);

		return sqlSession.selectList("WineXml.orderByWinelist", wineVo);
	}

	// 와인 추가
	public int insert(WineVo wineVo) {
		System.out.println("wineinsert");
		return sqlSession.insert("WineXml.insert", wineVo);
	}

	// 와인 삭제
	public void delete(WineVo wineVo) {
		sqlSession.delete("WineXml.delete", wineVo);
	}

}
