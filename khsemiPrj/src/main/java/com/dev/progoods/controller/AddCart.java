package com.dev.progoods.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.progoods.model.AddCartVo;
import com.dev.progoods.model.ProService;

@WebServlet("/addcart")
public class AddCart extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//if�� �α��� ���� Ȯ��!! 
		
		int pro_no = Integer.parseInt( req.getParameter("pro_no"));
//		int m_no = Integer.parseInt(req.getSession());	
		int m_no = 0007;
		
		AddCartVo c = new AddCartVo();
		c.setPro_no(pro_no);
		c.setM_no(m_no);
		c.setQuantity(1);
		
		boolean result = new ProService().insertCart(c);
		
	}
}
