package com.dev.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.member.model.service.MemberService;
import com.dev.member.model.vo.MemberVo;

@WebServlet("/login")
public class LoginController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/Member/u_login.jsp").forward(req, resp);
	}
	
	// 로그인 진행
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId = req.getParameter("userId");
		String userPwd = req.getParameter("userPwd");
		
		MemberVo m = new MemberVo();
		m.setUserId(userId);
		m.setUserPwd(userPwd);
		
		System.out.println(userPwd);
		
		MemberVo loginUser = new MemberService().login(m);
		
		if(loginUser != null) {
			// success
//			req.setAttribute("msg", "로그인 성공");
//			req.getRequestDispatcher("/WEB-INF/views/common/successPage.jsp").forward(req, resp);
			req.getSession().setAttribute("loginUser", loginUser);
			req.getRequestDispatcher("/WEB-INF/views/Product_Goods/u_home.jsp").forward(req, resp);
		} else {
			// error
			req.setAttribute("msg", "로그인 실패");
//			resp.sendRedirect(req.getContextPath());   
		}
	}
	
}
