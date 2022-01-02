package com.dev.probook.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dev.common.JDBCTemplate;

public class ProbookDAO 
{
	public List<ProbookVO> newproductslistcall(Connection conn)
	{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProbookVO pvo = null;
		List<ProbookVO> newProductList = new ArrayList<ProbookVO>();
			
		String sql = "SELECT ROWNUM, P.PRO_NO, P.PRO_NAME, P.PRO_IMG, P.UNIT_PRICE, P.SALES, P.DESCRIPTION, B.BOOK_AUTH, B.PUBL_DATE, B.CATEGORY FROM PRO_INF P INNER JOIN BOOK_INF B ON(P.PRO_NO = B.PRO_NO)";
	
		try 
		{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
				
			while (rs.next()) 
			{
				String productNumber = rs.getString("PRO_NO");
				String productName = rs.getString("PRO_NAME");
				String imageLink = rs.getString("PRO_IMG");
				String productPrice = rs.getString("UNIT_PRICE");
				String enrollDate = rs.getString("PUBL_DATE");
				String productDescript = rs.getString("DESCRIPTION");
				String writerName = rs.getString("BOOK_AUTH");
					
				pvo = new ProbookVO();
				pvo.setProductNumber(productNumber);
				pvo.setProductName(productName);
				pvo.setImageLink(imageLink);
				pvo.setProductPrice(productPrice);
				pvo.setEnrollDate(enrollDate);
				pvo.setProductDescript(productDescript);
				pvo.setWriterName(writerName);
				
				newProductList.add(pvo);
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);
		}
		
		return newProductList;
	}

	public List<ProbookVO> newproductslistcallsearch(Connection conn, String type, String value) 
	{
		System.out.println("newproductslistcallsearch is called!");
		System.out.println("type is " + type);
		System.out.println("value is " + value);
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM PRO_INF P INNER JOIN BOOK_INF B ON(P.PRO_NO = B.PRO_NO) WHERE P.%s LIKE ?";
		sql = String.format(sql, type);
		System.out.println("SQL ::: " + sql);
		
		List<ProbookVO> searchresultList = new ArrayList<ProbookVO>();
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + value + "%");
			
			ProbookVO pvo = null;
			
			rs = pstmt.executeQuery();
				
			while (rs.next()) 
			{
				String productNumber = rs.getString("PRO_NO");
				String productName = rs.getString("PRO_NAME");
				String imageLink = rs.getString("PRO_IMG");
				String productPrice = rs.getString("UNIT_PRICE");
				String enrollDate = rs.getString("PUBL_DATE");
				String productDescript = rs.getString("DESCRIPTION");
				String writerName = rs.getString("BOOK_AUTH");
				
				pvo = new ProbookVO();	
				pvo.setProductNumber(productNumber);
				pvo.setProductName(productName);
				pvo.setImageLink(imageLink);
				pvo.setProductPrice(productPrice);
				pvo.setEnrollDate(enrollDate);
				pvo.setProductDescript(productDescript);
				pvo.setWriterName(writerName);
				
				searchresultList.add(pvo);
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);
		}
		
		return searchresultList;
	}

}
