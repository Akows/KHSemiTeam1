package com.dev.progoods.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.progoods.model.ProgoodsService;
import com.dev.progoods.model.ProgoodsVo;

@WebServlet("/gd")
public class Goodsdetail extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String pro_no1 = req.getParameter("pro_no");
		System.out.println("pro_no1 : "+pro_no1);
		int pro_no =0 ;
		if(pro_no1 != null) {
			pro_no = Integer.parseInt(pro_no1);
		}
		
		
		ProgoodsVo gvo = new ProgoodsService().mdDetail(pro_no);
		
		req.setAttribute("gvo", gvo);
		req.getRequestDispatcher("/WEB-INF/views/Product_Goods/u_goods_detail.jsp").forward(req, resp);
	}
}
