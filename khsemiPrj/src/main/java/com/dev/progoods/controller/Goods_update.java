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
		
		String pro_no1 = req.getParameter("pro_no");
		int pro_no = 0;
		if(pro_no1 !=null) {
		 pro_no = Integer.parseInt(req.getParameter("pro_no"));
		}
		
		String pro_name = req.getParameter("pro_name");
	
		String unit_price1 = req.getParameter("unit_price");
		int unit_price =0;
		if(unit_price1 !=null) {
			unit_price = Integer.parseInt(req.getParameter("unit_price")) ;
		}
		
		String stock1= req.getParameter("stock");
		int stock = 0;
		if(stock1 !=null) {
			stock = Integer.parseInt(req.getParameter("stock")) ;
		}
		
		
		String category = req.getParameter("category");
		String maker = req.getParameter("maker");
		String country = req.getParameter("country");
		
		String goodsimg = req.getParameter("goodsimg");
		String goodsinf = req.getParameter("goodsinf");
		
		
		
		
		if(pro_name != null) {
			
		}else if(unit_price1 != null) {
			
		}else if(stock1 != null) {
			
		}else if(category != null) {
			
		}else if(maker != null) {
			
		}else if(country != null) {
			
		}else if(goodsimg != null) {
			
		}else if(goodsinf != null) {
			
		}
		
		
		
	}
}
