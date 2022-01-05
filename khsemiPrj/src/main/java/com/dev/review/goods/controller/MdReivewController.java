package com.dev.review.goods.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.paging.Paging;
import com.dev.review.goods.modelVo.MdReviewVo;


@WebServlet("/mdreview")
public class MdReivewController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		
		String pro_no1 = req.getParameter("pro_no");
		int pro_no=0;
		if(pro_no1!=null) {
			pro_no = Integer.parseInt(pro_no1);
		}
		String mr_cont = req.getParameter("mr_cont");
				
		
		System.out.println("컨트롤러 pro_no1 :"+pro_no);
		System.out.println("컨트롤러 mr_cont :"+mr_cont);
		//swy start
//		System.out.println("startNo"+page.startNo());
		
		
		
		
		//조회=======================
		String curpage = req.getParameter("currentPage");		
		if(curpage == null) {
			curpage = "1";
		}
		int curpage2 = Integer.parseInt(curpage);
		int total = new MdReviewService().totalMdReviewCount(pro_no);
		Paging page = new Paging(3, 3, total, curpage2);
		
		
		
		
		
		
		
		
		
		
		
//		List<MdReviewVo> mdReviewList = new MdReviewService().mdReviewList(page, pro_no);
		req.setAttribute("curpage", curpage2);
		
		
		
		req.setAttribute("page", page);
//		req.setAttribute("goodsList", goodsList);
		req.setAttribute("total", total);
		req.setAttribute("pro_no", pro_no);
		req.getRequestDispatcher("/gd").forward(req, resp);
		
	}

}
