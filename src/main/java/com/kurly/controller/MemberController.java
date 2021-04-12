package com.kurly.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	@GetMapping("/member/login")
	public String getLogin() {
		return "/member/login";
	}
	@GetMapping("/member/logout")
	public String getLogout(HttpSession session) {
		session.setAttribute("memberInfo", null);
		session.invalidate();
		return "redirect:/";
	}
	@GetMapping("/member/join")
	public String getMemberJoin() {
		return "/member/join";
	}
}
