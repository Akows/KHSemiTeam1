package com.dev.progoods.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.progoods.model.ProgoodsService;
import com.dev.progoods.model.ProgoodsVo;

@WebServlet("/gcon2")
public class Goodscontrol_2 extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
//		List<ProgoodsVo> goodsListAll =  new ProgoodsService().goodsListAll();
		
		req.getRequestDispatcher("/WEB-INF/views/Product_Goods/a_product_goods_update.jsp").forward(req, resp);
	}
}
