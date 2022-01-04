 package com.dev.member.find.controller;

import static com.dev.common.JDBCTemplate.close;
import static com.dev.common.JDBCTemplate.getConnection;

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
		
		Connection conn = JDBCTemplate.getConnection();	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVo m = null;
		
		String userName = req.getParameter("userName");
		String userPhone = req.getParameter("userPhone");
			
		String sql = "SELECT ID FROM MEMBER WHERE NAME = ? AND PHONE = ? ";
		try {
             pstmt = conn.prepareStatement(sql);
             pstmt.setString(1, userName);
             pstmt.setString(2, userPhone);

             rs = pstmt.executeQuery();
             
               if(rs.next()){
               String userId = rs.getString("userId");
                
                m = new MemberVo();
                m.setUserId(userId);
               }

        } catch (SQLException e) {
             e.printStackTrace();
        } finally {
            close(conn); 
            close(pstmt);
            close(rs);
        }

        
	}
}
