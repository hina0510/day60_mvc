package com.care.root;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.login.TestDTO;

@Repository
public class MemberDAO {
	ArrayList<MemberDTO> DB;
	public MemberDAO() {
		DB = new ArrayList<>();
	}
	public void save() {
		MemberDTO dto = new MemberDTO();
		dto.setId("id");
		dto.setPwd("pwd");
		dto.setName("name");
		DB.add(dto);
	}
	public ArrayList<MemberDTO> list(MemberDTO dto) {
		
		return DB;
	}
}
