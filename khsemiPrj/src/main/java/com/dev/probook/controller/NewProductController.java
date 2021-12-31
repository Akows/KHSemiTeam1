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

@WebServlet("/newproducts")
public class NewProductController extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		Connection conn = JDBCTemplate.getConnection();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProbookVO pvo = null;
		List<ProbookVO> newProductList = new ArrayList<ProbookVO>();
		
		// 신상품, 상품 테이블에서 데이터 삽입 시간 - ASC 정렬.
		String sql = "SELECT * FROM PRODUCT ORDER BY ENROLL_DATE ASC;";
		
		
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) 
			{
				String productNumber = rs.getString("PRODUCT_NO");
				String productName = rs.getString("PRODUCT_NAME");
				String imageLink = rs.getString("IMG_LINK");
				String productPrice = rs.getString("PRICE");
				String enrollDate = rs.getString("ENROLL_DATE");
				String productDescript = rs.getString("PRODUCT_DESCRIPT");
				
				pvo = new ProbookVO();
				pvo.setProductNumber(productNumber);
				pvo.setProductName(productName);
				pvo.setImageLink(imageLink);
				pvo.setProductPrice(productPrice);
				pvo.setEnrollDate(enrollDate);
				pvo.setProductDescript(productDescript);
				
				newProductList.add(pvo);
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		
		req.setAttribute("data", newProductList);
		req.getRequestDispatcher("./WEB-INF/views/Product_Books/u_new_book_list.jsp").forward(req, resp);
	}
	

	
	
	
	
	
}
