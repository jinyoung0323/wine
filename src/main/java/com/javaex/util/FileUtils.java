package com.javaex.util;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.javaex.vo.FileVo;

public class FileUtils {

	public FileVo fileUpload(MultipartFile file) {

		//첫번재 따움표를 본인 git로컬저장소 경로로 바꿔서 실행 : project우클릭>properties>Location확인
		String saveDir = "C:/Users/user/git"+"/wine/webapp/assets/image";
		
		System.out.println(saveDir);

		// 원파일이름
		String orgName = file.getOriginalFilename();

		// 확장자
		String exName = orgName.substring(orgName.lastIndexOf("."));

		// 저장파일이름
		String saveName = UUID.randomUUID().toString()+"_" + orgName;

		//파일패스 생성
		String filePath = saveDir + "/" + saveName;
		System.out.println(filePath);
		
		//파일 사이즈
		long fileSize = file.getSize();
		
		
		// 파일업로드
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(saveDir + "/" + saveName);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);

			if (bout != null) {
				bout.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		FileVo fileVo = new FileVo(orgName, exName, saveName, filePath, fileSize);

		return fileVo;

	}

}
