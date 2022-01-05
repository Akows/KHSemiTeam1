package com.dev.qna.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.qna.model.vo.QnaVo;

@WebServlet("/qnadtreport")
public class QnaDetailReportController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int qnaNo = Integer.parseInt(req.getParameter("qnaNo"));
		
		QnaVo q = new QnaVo();
		q.setQnaNo(qnaNo);
		
		
	}
}
