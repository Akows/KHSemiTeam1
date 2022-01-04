package com.dev.progoods.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/goods_update")
public class Goods_update extends HttpServlet {

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int pro_no = Integer.parseInt(req.getParameter("pro_no"));
		String pro_name = req.getParameter("pro_name");
		int unit_price = Integer.parseInt(req.getParameter("unit_price")) ;
		int stock = Integer.parseInt(req.getParameter("stock")) ;
		String category = req.getParameter("category");
		String maker = req.getParameter("maker");
		String country = req.getParameter("country");
		
		String goodsimg = req.getParameter("goodsimg");
		String goodsinf = req.getParameter("goodsinf");
		
	}
}
