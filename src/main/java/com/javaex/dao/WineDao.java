package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.util.FileUtils;
import com.javaex.vo.Criteria;
import com.javaex.vo.FileVo;
import com.javaex.vo.WineVo;

@Repository
public class WineDao {

	@Autowired
	private SqlSession sqlSession;

	// 게시글 총 갯수
	public int listCount() {
		return sqlSession.selectOne("WineXml.listCount");
	}

	// 와인 검색 갯수
	public int listCountBySearch(WineVo wineVo) {
		return sqlSession.selectOne("WineXml.listCountBySearch", wineVo);
	}

	// 와인 타입별 갯수
	public int listCountByType(WineVo wineVo) {
		return sqlSession.selectOne("WineXml.listCountByType", wineVo);
	}

	// 와인리스트 불러오기(정렬기능 포함)
	public List<WineVo> list(WineVo wineVo) {
		return sqlSession.selectList("WineXml.listPage", wineVo);
	}

	// 와인 검색
	public List<WineVo> getSearchByKeyword(WineVo wineVo) {
		return sqlSession.selectList("WineXml.searchByKeyword", wineVo);
	}

	// 타입별 와인리스트 불러오기
	public List<WineVo> listCateByType(WineVo wineVo) {
		return sqlSession.selectList("WineXml.listCateByType", wineVo);
	}

	
//	public int insert(WineVo wineVo) {
//
//		System.out.println(wineVo.toString());
//		// jsp에서 넘어온 등록할 정보들 중에서 file명을 추출
//		MultipartFile file = wineVo.getFile();
//		System.out.println(file.toString());
//		FileVo fileVo;
//
//		if (!file.isEmpty()) {
//			FileUtils fileUtil = new FileUtils();
//			fileVo = fileUtil.fileUpload(file, file.getName());
//			// 가능?
//			wineVo.setWine_image(fileVo.getSaveName());
//		}
//
//		return sqlSession.insert("WineXml.insert", wineVo);
//	}

	// 와인 추가
	public int insert(WineVo wineVo, String path) {

		System.out.println(wineVo.toString());
		// jsp에서 넘어온 등록할 정보들 중에서 file명을 추출
		MultipartFile file = wineVo.getFile();
		System.out.println(file.toString());
		FileVo fileVo;

		if (!file.isEmpty()) {
			FileUtils fileUtil = new FileUtils();
			fileVo = fileUtil.fileUpload(file, path);
			// 가능?
			wineVo.setWine_image(fileVo.getFilePath());
		}

		return sqlSession.insert("WineXml.insert", wineVo);
	}

	// 와인 삭제
	public void delete(WineVo wineVo) {
		sqlSession.delete("WineXml.delete", wineVo);
	}

	// 와인 상세페이지
	public WineVo viewDetail(int wine_no) {
		return sqlSession.selectOne("WineXml.selectById", wine_no);
	}

}
