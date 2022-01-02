package com.dev.probook.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.probook.model.ProbookVO;
import com.dev.probook.service.ProbookService;

@WebServlet("/bookinsert")
public class BookInsertcontroller extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String productName = req.getParameter("pro_name");
		String unitPrice = req.getParameter("unit_price");
		String stock = req.getParameter("stock");
		String writer = req.getParameter("writer");
		String publisher = req.getParameter("book_pub");
		String publicDate = req.getParameter("publ_date");
		String category = req.getParameter("category");
		String descipt = req.getParameter("descript");
		String bookindex = req.getParameter("bookindex");
		
		ProbookVO pro = new ProbookVO();
		
		pro.setProductName(productName);
		pro.setProductPrice(unitPrice);
		pro.setProductStock(stock);
		pro.setWriterName(writer);
		pro.setPublisher(publisher);
		pro.setEnrollDate(publicDate);
		pro.setCategoty(category);
		pro.setProductDescript(descipt);
		pro.setContentList(bookindex);
		
		int result = new ProbookService().bookinsert(pro);
		
		if (result > 0) 
		{
			req.getRequestDispatcher("./WEB-INF/views/Product_Books/a_book_insert.jsp").forward(req, resp);
		}
		else 
		{	
			req.getRequestDispatcher("./WEB-INF/views/Product_Books/a_book_insert.jsp").forward(req, resp);
		}
	}
}
