package com.dev.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.member.model.service.MemberService;
import com.dev.member.model.vo.MemberVo;
import com.sun.nio.file.ExtendedOpenOption;

@WebServlet("/join")
public class MemberJoinController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/Member/u_member_join.jsp").forward(req, resp);
	}
	
	// 회원가입 진행
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId = req.getParameter("userId");
		String userPwd = req.getParameter("userPwd");
		String pwdCheck = req.getParameter("pwdCheck");
		String userName = req.getParameter("userName");
		String userEmail = req.getParameter("userEmail");
		int phoneNum = Integer.parseInt(req.getParameter("phoneNum"));
		String address = req.getParameter("address");
		int birthDay = Integer.parseInt(req.getParameter("birthDay"));
		
		MemberVo m = new MemberVo();
		m.setUserId(userId);
		m.setUserPwd(userPwd);
		m.setPwdCheck(pwdCheck);
		m.setUserName(userName);
		m.setUserEmail(userEmail);
		m.setPhoneNum(phoneNum);
		m.setAddress(address);
		m.setBirthDay(birthDay);
		
		int result = new MemberService().join(m);
	}
}
