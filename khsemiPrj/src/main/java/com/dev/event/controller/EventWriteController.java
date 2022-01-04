package com.dev.event.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.event.model.vo.EventVo;
import com.dev.qna.model.service.QnaService;

@WebServlet("/eventwrite")
public class EventWriteController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/QnA/a_event_write.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String title = req.getParameter("eventtitle");
		String content = req.getParameter("eventcontent");
		String sStartDate = req.getParameter("startdate");
		String sEndDate = req.getParameter("enddate");
		
		// 세션 처리 되면 사용할 생성자
		EventVo e = new EventVo();
		e.setEventTitle(title);
		e.setEventContent(content);
		e.setEventStart(null);

		int result = new QnaService().writeEvent(e);

		if (result > 0) {
			resp.sendRedirect("event");
		} else {
			req.getRequestDispatcher("WEB-INF/views/QnA/a_event_write.jsp").forward(req, resp);
		}
	}
}
