package com.dev.probook.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.common.JDBCTemplate;
import com.dev.probook.model.ProbookVO;
import com.dev.probook.service.ProbookService;

@WebServlet("/newproducts")
public class NewProductController extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		System.out.println("NewProductController is acitve!");
		
		String type = req.getParameter("searchtype");
		String value = req.getParameter("searchvalue");
		
		System.out.println(type);		
		System.out.println(value);
		
		List<ProbookVO> newProductList = new ProbookService().newproductslistcall(type, value);
		
		req.setAttribute("data", newProductList);
		req.getRequestDispatcher("./WEB-INF/views/Product_Books/u_new_book_list.jsp").forward(req, resp);
	}

}
