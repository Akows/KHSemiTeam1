package com.dev.qna.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.paging.Paging;
import com.dev.qna.model.service.QnaService;
import com.dev.qna.model.vo.QnaVo;

@WebServlet("/qna")
public class QnaListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("qnaList controller called...");
		
		String curpage = req.getParameter("currentPage");
		if(curpage.equals(null)) {
			curpage = "1";
		}
		
		int curpage2 = Integer.parseInt(curpage);
		
		new Paging(15, 5, curpage2, curpage2);
		
		List<QnaVo> qnaList = new QnaService().selectQnaList();
		
		req.setAttribute("qnaList", qnaList);
		req.getRequestDispatcher("/WEB-INF/views/QnA/m_qna_list.jsp").forward(req, resp);
	}
}
