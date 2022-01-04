 package com.dev.member.find.controller;

import static com.dev.common.JDBCTemplate.close;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.common.JDBCTemplate;
import com.dev.member.model.dao.MemberDao;
import com.dev.member.model.service.MemberService;
import com.dev.member.model.vo.MemberVo;

@WebServlet("/idsearch")
public class MemberFindIdController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/Member/u_find_id.jsp").forward(req, resp);
	}
	
	// 아이디 찾기 진행
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		String userName = req.getParameter("userName");
		String userPhone = req.getParameter("userPhone");
		
		MemberVo m = new MemberVo();
		m.setUserName(userName);
		m.setUserPhone(userPhone);
		
		System.out.println("이름 : " + userName);
		System.out.println("번호 : " + userPhone);

		
		String userId = new MemberService().searchId(userName, userPhone);
		
		if(userId != null) {
			// success
//			req.setAttribute("ID", userId);
			resp.setContentType("text/html; charset=UTF-8");
			resp.getWriter().print("회원님의 아이디는 " + userId + " 입니다.");
//			req.getRequestDispatcher("/WEB-INF/views/Member/u_login.jsp").forward(req, resp);
		} else {
			// error
			resp.setContentType("text/html; charset=UTF-8");
			resp.getWriter().print("조회되는 아이디가 없습니다. 아이디 조회 페이지로 이동합니다.");
			req.getRequestDispatcher("/WEB-INF/views/Member/u_find_id.jsp").forward(req, resp);
		}
		
        
	}
}
