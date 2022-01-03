package com.dev.qna.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.qna.model.service.QnaService;
import com.dev.qna.model.vo.QnaVo;

@WebServlet("/qnadt")
public class QnaDetailController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String qnaNo = req.getParameter("qnaNo");
		System.out.println(qnaNo);
		
		QnaVo q = new QnaService().qnaSelect(Integer.parseInt(qnaNo));
		
		req.setAttribute("q", q);
		req.getRequestDispatcher("WEB-INF/views/QnA/m_qna_detail.jsp").forward(req, resp);
	}
}
