package com.dev.order.controller;

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
import com.dev.order.vo.CartVo;

@WebServlet("/cart")
public class Cart extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		//디비가서 데이터 조회
		
		//커넥션 가져옴
		Connection conn = JDBCTemplate.getConnection();
		
		//쿼리 날릴 준비
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String sql = "SELECT  a.PRO_NO "
				   + "       ,B.PRO_IMG "
				   + "       ,B.PRO_NAME "
				   + "       ,B.UNIT_PRICE "
				   + "       ,a.quantity "
				   + "       ,A.QUANTITY * B.UNIT_PRICE  AS AMT "
				   + "  FROM  CART  A "
				   + "  LEFT  OUTER  JOIN  PRO_INF  B "
				   + "    ON (    A.PRO_NO = B.PRO_NO"
				   + "       ) "
				   ;
		List<CartVo> cartList = new ArrayList<CartVo>();
		
		//이제 쿼리 날림
		try 
		{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
		
			while(rs.next())
			{
				//rs에서 현재 커서가 가리키는 행의 데이터를 가져옴
				int pro_no = rs.getInt("PRO_NO");
				String pro_img = rs.getString("PRO_IMG");
				String pro_name = rs.getString("PRO_NAME");
				int unit_price = rs.getInt("UNIT_PRICE");
				int quantity = rs.getInt("QUANTITY");
				int amt = rs.getInt("AMT");
				
				//여러 변수에 흩어져 있는 데이터를 하나로 뭉침
				CartVo c = new CartVo();
				c.setPro_no(pro_no);
				c.setPro_img(pro_img);
				c.setPro_name(pro_name);
				c.setUnit_price(unit_price);
				c.setQuantity(quantity);
				c.setAmt(amt);
				
				cartList.add(c);
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		
		
		//조회한 데이터를 JSP한테 넘겨줌
		
		req.setAttribute("data", cartList);
		req.getRequestDispatcher("/WEB-INF/views/Order/u_cart.jsp").forward(req, resp);
		}

}
