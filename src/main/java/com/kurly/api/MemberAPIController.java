package com.kurly.api;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kurly.service.MemberService;
import com.kurly.utils.AESAlgorithm;
import com.kurly.vo.LoginVO;
import com.kurly.vo.MemberVO;
import com.kurly.vo.SimpleMemberVO;

@RestController
public class MemberAPIController {
	@Autowired
	MemberService service;
	
	@PostMapping("/member/login")
	public Map<String, String> postLogin(@RequestBody LoginVO vo, HttpServletResponse response, HttpSession session) {
		Map<String, String> resultMap = new LinkedHashMap<String, String>();
		
		if(vo.getId() == null || vo.getPwd() == null) {
			response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
			resultMap.put("message", "필드명 [id] 또는 [pwd] 가 비어있습니다.");
			return resultMap;
		}
		String pwd = vo.getPwd();
		try {
			pwd =AESAlgorithm.Encrypt(pwd);
		}
		catch(Exception e) { e.printStackTrace();}
		vo.setPwd(pwd);
		
		if(service.memberLogin(vo)) {
			// 성공
			response.setStatus(HttpServletResponse.SC_ACCEPTED);
			resultMap.put("message", "로그인 되었습니다.");
			
			SimpleMemberVO memberInfo = service.selectSimpleMemberInfo(vo);
			session.setAttribute("memberInfo", memberInfo);
		}
		else {
			// 실패
			response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
			resultMap.put("message", "로그인 실패");
		}
		
		return resultMap;
	}
	
	@PostMapping("/member/join")
	public Map<String, String> postMemberJoin(@RequestBody MemberVO vo) {
		Map<String, String> resultMap = new LinkedHashMap<String, String>();
		
		service.insertMemberInfo(vo);
		
		resultMap.put("status", "success");
		resultMap.put("message","가입되었습니다.");
		
		return resultMap;
		
	}
	
	@GetMapping("/member/id_check")
	public Map<String, String> getMemberIdCheck(@RequestParam String id) {
		Map<String, String> resultMap = new LinkedHashMap<String,String>();
		
		if(service.userIdCheck(id)) {
			resultMap.put("status", "OK");
			resultMap.put("message","가입 가능합니다.");
		}
		else {
			resultMap.put("status", "failed");
			resultMap.put("message","이미 등록된 아이디 입니다.");

		}
		
		return resultMap;
	}
	
	@GetMapping("/member/email_check")
	public Map<String, String> getMemberEmailCheck(@RequestParam String email) {
		Map<String, String> resultMap = new LinkedHashMap<String,String>();
		
		if(service.userEmailCheck(email)) {
			resultMap.put("status", "OK");
			resultMap.put("message","가입 가능합니다.");
		}
		else {
			resultMap.put("status", "failed");
			resultMap.put("message","이미 등록된 아이디 입니다.");

		}
		
		return resultMap;
	}
	
	
	
	
}
