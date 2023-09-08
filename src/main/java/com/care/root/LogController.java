package com.care.root;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.login.TestDTO;

@Controller
public class LogController {
	@GetMapping("index")
	public String index(){
		return "quiz/index";
	}
	@PostMapping("login_check")
	public String loginCheck(@RequestParam String id, @RequestParam String pwd,
			MemberDTO dto){
		if (id.equals(dto.getId())&&pwd.equals(dto.getPwd())) {
			return "quiz/list";
		}
		return "quiz/index";
	}
	@GetMapping("register")
	public String register(){
		return "quiz/register";
	}
	@PostMapping("register_result")
	public String registerResult(@RequestParam String id, @RequestParam String pwd,
			@RequestParam String name, MemberDAO dao){
		
		dao.save();
		return "quiz/index";
	}
	@GetMapping("list")
	public String list(MemberDAO dao, Model model){
		model.addAttribute("dao", dao);
		
		return "quiz/list";
	}
	
}
