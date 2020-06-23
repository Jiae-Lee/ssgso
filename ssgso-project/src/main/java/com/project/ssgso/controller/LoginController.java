package com.project.ssgso.controller;

import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.ssgso.dto.MemberDto;
import com.project.ssgso.service.MemberServiceImpl;

import email.Email;
import email.EmailSender;

@Controller
public class LoginController {

	@Autowired
	private MemberServiceImpl memberServiceImpl; // 주입. 멤버서비스 객체W

	// 로그인 폼
	@RequestMapping(value = "/login/loginForm")
	public String loginForm() {
		return "login/loginForm";
	}

	// 아이디 찾기
	@RequestMapping(value = "/login/searchId")
	public String searchId() {
		return "login/searchId";
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/login/searchPw")
	public String searchPw() {
		return "login/searchPw";
	}

	// 로그인 처리
	@RequestMapping("login/loginCheck.do") // 폼의 액션부분 url과 같아야함
	public ModelAndView loginCheck(@ModelAttribute MemberDto memberDto, HttpSession session) {
		System.out.println("memberDto=[" + memberDto + "]");
		boolean result = memberServiceImpl.loginCheck(memberDto, session);
		ModelAndView mav = new ModelAndView();
		if (result == true) { // 로그인 성공
			// index.jsp로 이동
			System.out.println("로그인 되었습니다.");
			mav.setViewName("index");
			mav.addObject("msg", "success");
		} else { // 로그인 실패
			// loginForm.jsp로 이동
			System.out.println("회원정보가 일치하지 않습니다.");
			mav.setViewName("login/loginForm");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	
	// 로그아웃 처리
	@RequestMapping("login/logout.do")
	public ModelAndView logout(HttpSession session) {
		memberServiceImpl.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/loginForm");
		mav.addObject("msg", "logout");
		return mav;
	}
	
	
	// 아이디 찾기
	@RequestMapping("/searchId.do")
	public ModelAndView searchId(@RequestParam Map<String, Object> paramMap, ModelMap model) {
		ModelAndView mav = new ModelAndView();
		String name = (String) paramMap.get("name");
		System.out.println(name);
		String id = memberServiceImpl.getId((HashMap<String, Object>) paramMap);
		System.out.println(id);
		if (id != null) {		
			System.out.println(name + " 회원님의  아이디는 "+id+" 입니다.");
			model.addAttribute("msgId", name + " 회원님의  아이디는 "+id+" 입니다.");		
			mav = new ModelAndView("login/loginForm"); // 제대로 되면 loginForm으로 이동
			return mav;
		}else {
			System.out.println("이름과 이메일이 일치하지 않습니다.");
			model.addAttribute("msgId", "이름과 이메일이 일치하지 않습니다.");	
			mav = new ModelAndView("login/searchId"); // 일치하지 않을시 현재페이지
			return mav;
		}
	}	
		
	
	@Autowired
	private EmailSender emailSender;
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private Email email;

	// 비밀번호 찾기 - 이메일로 비밀번호 전송
	@RequestMapping("/sendPw.do")
	public ModelAndView sendEmailAction(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception {
		ModelAndView mav;

		String id = (String) paramMap.get("member_id");
		String e_mail = (String) paramMap.get("email");
		System.out.println(id + "," + e_mail);
		String pw = memberServiceImpl.getPassword((HashMap<String, Object>) paramMap);
		System.out.println(pw);
		if (pw != null) {
			email.setContent(id + " 님의 비밀번호는 " + pw + " 입니다."); // 이메일로 보낸 메시지
			email.setReceiver(e_mail); // 받는이의 이메일 주소
			email.setSubject(id + " 님 비밀번호 찾기 메일입니다."); // 이메일로 보낼 제목
			
			try {
				MimeMessage msg = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper 
				= new MimeMessageHelper(msg, true, "UTF-8");
				
				messageHelper.setSubject(email.getSubject());
				messageHelper.setText(email.getContent());
				messageHelper.setTo(email.getReceiver());
				messageHelper.setFrom("ssgsomanager@gmail.com"); // 보내는 이의 주소(root-context.xml 에서 선언했지만 적어줬음)
				msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(email.getReceiver()));
				mailSender.send(msg);
				
			}catch(MessagingException e) {
				System.out.println("MessagingException");
				e.printStackTrace();
			}
			
			System.out.println(id + " 님의 이메일로 비밀번호를 발송했습니다.");
			model.addAttribute("msgPw", id + " 님의 이메일로 비밀번호를 발송했습니다.");			
			mav = new ModelAndView("login/loginForm"); // 제대로 되면 loginForm으로 이동
			return mav;
		} else {
			System.out.println("아이디와 이메일이 일치하지 않습니다.");
			model.addAttribute("msgPw", "아이디와 이메일이 일치하지 않습니다.");	
			mav = new ModelAndView("login/searchPw"); // 일치하지 않을시 현재페이지
			return mav;
			
		}
	
	}
}

