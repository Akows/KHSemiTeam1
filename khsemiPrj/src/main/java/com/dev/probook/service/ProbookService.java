package com.dev.probook.service;

import java.sql.Connection;
import java.util.List;

import com.dev.common.JDBCTemplate;
import com.dev.probook.model.ProbookDAO;
import com.dev.probook.model.ProbookVO;

public class ProbookService 
{
	public List<ProbookVO> newproductslistcall(String type, String value)
	{
		Connection conn = JDBCTemplate.getConnection();
		List<ProbookVO> newProductList;
		
		if (value == null) 
		{
			newProductList = new ProbookDAO().newproductslistcall(conn);
		} 
		else 
		{
			newProductList = new ProbookService().newproductslistcallsearchcall(conn, type, value);
		}
		
		JDBCTemplate.close(conn);
			
		return newProductList;
	}
	
	public List<ProbookVO> newproductslistcallsearchcall(Connection conn, String type, String value) 
	{
		new ProbookDAO().newproductslistcallsearch(conn, type, value);
		
		return null;
	}

}