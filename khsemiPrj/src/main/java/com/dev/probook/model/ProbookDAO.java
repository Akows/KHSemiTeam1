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
		
	public int insertBookProduct(Connection conn, ProbookVO pro) 
	{
		String sql = "INSERT ALL INTO PRO_INF VALUES (SEQ_PRO_INF.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, '도서')"
				+ 				"INTO BOOK_INF VALUES (SEQ_BOOK_INF.NEXTVAL, SEQ_PRO_INF.NEXTVAL, ?, ?, ?, ?, ?)"
				+ 				"SELECT *"
				+ 				"FROM DUAL";

		PreparedStatement pstmt = null;
		int result = 0;
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pro.getProductName());
			
			pstmt.setString(2, pro.getImageLink());
			
			pstmt.setString(3, pro.getProductPrice());
			pstmt.setString(4, pro.getProductStock());
			pstmt.setString(5, pro.getProductSaleCount());
			pstmt.setString(6, pro.getProductLikeCount());
			pstmt.setString(7, pro.getProductDescript());
			
			pstmt.setString(8, pro.getWriterName());
			pstmt.setString(9, pro.getPublisher());
			
			pstmt.setString(10, pro.getEnrollDate());
			
			pstmt.setString(11, pro.getCategoty());
			pstmt.setString(12, pro.getContentList());

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

	public List<ProbookVO> productlistcall(Connection conn, int startNum, int lastNum) 
	{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProbookVO pvo = null;
		List<ProbookVO> newProductList = new ArrayList<ProbookVO>();
		
		String sql = "SELECT * FROM ( SELECT ROWNUM as RNUM, P.PRO_NO, P.PRO_NAME, P.PRO_IMG, P.UNIT_PRICE, P.STOCK, P.SALES, P.PRO_LIKE, P.DESCRIPTION, P.PRO_TYPE, B.BOOK_NO, B.BOOK_AUTH, B.PUBL_DATE, B.CATEGORY, B.CONT_LIST FROM PRO_INF P INNER JOIN BOOK_INF B ON(P.PRO_NO = B.PRO_NO) ) WHERE RNUM BETWEEN ? AND ?";
	
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
				String productStock = rs.getString("STOCK");
				String productSales = rs.getString("SALES");
				String productlike = rs.getString("PRO_LIKE");
				String productDescript = rs.getString("DESCRIPTION");
				String productType = rs.getString("PRO_TYPE");
				
				String bookNumber = rs.getString("BOOK_NO");
				String writerName = rs.getString("BOOK_AUTH");
				String enrollDate = rs.getString("PUBL_DATE");
				String category = rs.getString("CATEGORY");
				String contentList = rs.getString("CONT_LIST");
					
				pvo = new ProbookVO();
				pvo.setProductNumber(productNumber);
				pvo.setProductName(productName);
				pvo.setImageLink(imageLink);
				pvo.setProductPrice(productPrice);
				pvo.setProductStock(productStock);
				pvo.setProductSaleCount(productSales);
				pvo.setProductLikeCount(productlike);
				pvo.setProductType(productType);
				
				pvo.setBookNumber(bookNumber);
				pvo.setCategoty(category);
				pvo.setContentList(contentList);
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


}
