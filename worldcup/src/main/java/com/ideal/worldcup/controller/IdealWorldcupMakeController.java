package com.ideal.worldcup.controller;

import java.io.IOException;
import java.util.Iterator;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ideal.worldcup.dto.CommonFileVO;

@Controller
public class IdealWorldcupMakeController {
	private static final String UPLOAD_PATH = "C:\\idealworldcupimg";
	
	
	@PostMapping("/upload.do")
	@ResponseBody
	public int upload(MultipartFile files, int fk_code, CommonFileVO commonFileVO ) {
		
		return 0;
	}
	
	@RequestMapping("makeOk.do")
	public String makeOk(MultipartHttpServletRequest request) {
		
		Iterator<String> itr = request.getFileNames();
		while(itr.hasNext()) {
			String uploadedFile = itr.next();
			MultipartFile file = request.getFile(uploadedFile);
			
		}
		System.out.println(request.getFileNames());
		System.out.println("makeOk");
		return "main";
	}
}
