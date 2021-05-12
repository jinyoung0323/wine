package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.Criteria;
import com.javaex.vo.WineDescriptionVo;
import com.javaex.vo.WineVo;

@Repository
public class WineDao {

	@Autowired
	private SqlSession sqlSession;

	// 게시글 총 갯수
	public int listCount() {
		return sqlSession.selectOne("WineXml.listCount");
	}

	// 와인리스트 불러오기
	public List<WineVo> list(Criteria cr) {
		return sqlSession.selectList("WineXml.listPage", cr);
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
		return sqlSession.insert("WineXml.insert", wineVo);
	}

	// 와인 삭제
	public void delete(WineVo wineVo) {
		sqlSession.delete("WineXml.delete", wineVo);
	}

	// 와인 상세페이지
	public WineVo viewDetail(int wine_no) {
		System.out.println("----> sqlSession.selectList()");
		System.out.println(sqlSession);
		System.out.println("wine_no : " + wine_no);

		return sqlSession.selectOne("WineXml.selectById", wine_no);
	}

}
