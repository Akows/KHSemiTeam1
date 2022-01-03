package com.dev.qna.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.qna.model.service.QnaService;
import com.dev.qna.model.vo.QnaVo;

@WebServlet("/qnaupdate")
public class QnaUpdateController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String qnaNo = req.getParameter("qnaNo");
		System.out.println("수정전 qnaNo : " + qnaNo);
		String qnaTitle = req.getParameter("qnaTitle");
		System.out.println("수정전 qnaNo : " + qnaTitle);
		String qnaContent = req.getParameter("qnaContent");
		System.out.println("수정전 qnaContent : " + qnaContent);
		
//		int result = new QnaService().qnaUpdate(Integer.parseInt(qnaNo));
		
//		req.setAttribute("result", result);
		
		req.setAttribute("qnaTitle", qnaTitle);
		req.setAttribute("qnaContent", qnaContent);
		req.getRequestDispatcher("WEB-INF/views/QnA/u_qna_update.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//세션 처리 후 세션에 있는 m_no를 가져옴
		// String id = req.getAttribute("m_no");
		String title = req.getParameter("qnatitle");
		String content = req.getParameter("qnacontent");

		// 세션 처리 되면 사용할 생성자
		// QnaVo q = new QnaVo(title, content, id);
		QnaVo q = new QnaVo();
		q.setQnaTitle(title);
		q.setQnaContent(content);

		int result = new QnaService().qnaUpdate(q);

		if (result > 0) {
			resp.sendRedirect("qna");
		} else {
			req.getRequestDispatcher("WEB-INF/views/QnA/u_qna_update.jsp").forward(req, resp);
		}
	}
}
