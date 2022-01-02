package com.dev.probook.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.dev.common.JDBCTemplate;
import com.dev.probook.model.ProbookDAO;
import com.dev.probook.model.ProbookVO;

public class ProbookService 
{
	public List<ProbookVO> newproductslistcall(String type, String value, String currentPage)
	{
		Connection conn = JDBCTemplate.getConnection();
		List<ProbookVO> newProductList;
		
		int totalListCount = countAllProductMethod(conn);
		
		int pageLimit = 5;
		int boardLimit = 6;
		int maxPage = 0;
		
		maxPage = totalListCount / boardLimit;
		if((totalListCount % boardLimit) != 0)
		{
			maxPage++;
		}
		
		int p = Integer.parseInt(currentPage);
		
		int lastNum = p * boardLimit;
		int startNum = lastNum - boardLimit + 1; 
		
		if (value == null) 
		{
			newProductList = newproductslistcall(conn, currentPage, startNum, lastNum);
		} 
		else 
		{
			newProductList = newproductslistcallsearchcall(conn, type, value);
		}
		
		JDBCTemplate.close(conn);
			
		return newProductList;
	}
	
	public int bookinsert(ProbookVO pro)
	{
		Connection conn = JDBCTemplate.getConnection();
		
		int result = 0;
		
		try 
		{
			result = insertBookInf(conn, pro);
			result = insertProInf(conn, pro);
			
			if(result > 0)
			{
				JDBCTemplate.commit(conn);
			}
			else
			{
				JDBCTemplate.rollback(conn);
			}
		} 
		finally 
		{
			JDBCTemplate.close(conn);
		}

		return result;
	}	
	
	
	private int insertBookInf(Connection conn, ProbookVO pro) 
	{
		return new ProbookDAO().bookinfinsert(conn, pro);
	}
	private int insertProInf(Connection conn, ProbookVO pro) 
	{
		return new ProbookDAO().proinfinsert(conn, pro);
	}
	

	private int countAllProductMethod(Connection conn) 
	{
		return new ProbookDAO().countAllProductMethod(conn);
	}

	public List<ProbookVO> newproductslistcall(Connection conn, String currentPage, int startNum, int lastNum) 
	{
		return new ProbookDAO().newproductslistcall(conn, startNum, lastNum);
	}
	

	public List<ProbookVO> newproductslistcallsearchcall(Connection conn, String type, String value) 
	{
		return new ProbookDAO().newproductslistcallsearch(conn, type, value);
	}



}