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

	// 와인리스트 타입별 불러오기
	public List<WineVo> getList(int wine_type) {
		System.out.println("----> sqlSession.selectList()");
		System.out.println(sqlSession);

		return sqlSession.selectList("WineXml.selectListByType", wine_type);
	}

	// 와인 추가
	public int insert(WineDescriptionVo wdVo) {
//		System.out.println(wineVo);
		WineVo wineVo = new WineVo(wdVo);
		return sqlSession.insert("WineXml.insert", wineVo);
	}

	// 와인 삭제
	public void delete(WineVo wineVo) {
		sqlSession.delete("WineXml.delete", wineVo);
	}

}
