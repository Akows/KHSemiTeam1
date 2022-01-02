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
	public List<ProbookVO> newproductslistcall(Connection conn, int startNum, int lastNum)
	{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProbookVO pvo = null;
		List<ProbookVO> newProductList = new ArrayList<ProbookVO>();
		
		String sql = "SELECT * FROM ( SELECT ROWNUM as RNUM, P.PRO_NO, P.PRO_NAME, P.PRO_IMG, P.UNIT_PRICE, P.SALES, P.DESCRIPTION, B.BOOK_AUTH, B.PUBL_DATE, B.CATEGORY FROM PRO_INF P INNER JOIN BOOK_INF B ON(P.PRO_NO = B.PRO_NO) WHERE ROWNUM <= 30 ) WHERE RNUM BETWEEN ? AND ?";
	
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startNum);
			pstmt.setInt(2, lastNum);
			
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

	public int countAllProductMethod(Connection conn) 
	{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		
		String sql = "SELECT COUNT(P.PRO_NO) FROM PRO_INF P INNER JOIN BOOK_INF B ON(P.PRO_NO = B.PRO_NO)";
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
				
			while (rs.next()) 
			{
				result = rs.getInt(1);
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
		
		return result;
	}
		
	public int bookinfinsert(Connection conn, ProbookVO pro) 
	{
		String sql = "INSERT INTO PRO_INF (PRO_NO, PRO_NAME, PRO_IMG, UNIT_PRICE, STOCK, SALES, PRO_LIKE, DESCRIPTION, PRO_TYPE) "
				+ "VALUES (SEQ_PRO_INF.NEXTVAL, ?, '링크 거는 법 연구필요', ?, ?, ?, ?, ?, ?)";

		PreparedStatement pstmt = null;
		int result = 0;
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pro.getProductName());
			pstmt.setString(2, pro.getProductPrice());
			pstmt.setString(3, pro.getProductStock());
			pstmt.setString(4, pro.getProductSaleCount());
			pstmt.setString(5, pro.getProductLikeCount());
			pstmt.setString(6, pro.getProductDescript());
			pstmt.setString(7, pro.getProductType());

			result = pstmt.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}
	
	public int proinfinsert(Connection conn, ProbookVO pro) 
	{
		String sql = "INSERT INTO BOOK_INF (BOOK_NO, PRO_NO, BOOK_AUTH, BOOK_PUB, PUBL_DATE, CATEGORY, CONT_LIST) "
				+ "VALUES (SEQ_BOOK_INF.NEXTVAL, SEQ_PRO_INF.NEXTVAL, ?, ?, SYSDATE, ?, ?)";

		PreparedStatement pstmt = null;
		int result = 0;
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pro.getWriterName());
			pstmt.setString(2, pro.getPublisher());
			pstmt.setString(3, pro.getCategoty());
			pstmt.setString(4, pro.getContentList());

			result = pstmt.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

}
