package com.dev.probook.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dev.probook.model.ProbookVO;
import com.dev.probook.service.ProbookService;

@WebServlet("/bookupdateinsert")
public class BookUpdateInsertController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		req.setCharacterEncoding("utf-8");
		
		String type = req.getParameter("searchtype");
		String value = req.getParameter("searchvalue");
		
		String productNumber = req.getParameter("proNum");
		String productName = req.getParameter("proName");
		String productPrice = req.getParameter("productPrice");
		String productStock = req.getParameter("productStock");
		String productSales = req.getParameter("productSaleCount");
		String productlike = req.getParameter("productLikeCount");
		String productDescript = req.getParameter("productDescript");
		String productType = req.getParameter("productType");
		String bookNumber = req.getParameter("bookNumber");
		String writerName = req.getParameter("writerName");
		String publisher = req.getParameter("publisher");
		String enrollDate = req.getParameter("enrollDate");
		String category = req.getParameter("category");
		String contentList = req.getParameter("contentList");
		
		ProbookVO pro = new ProbookVO();
		
		pro.setProductNumber(productNumber);
		pro.setProductName(productName);
		pro.setProductPrice(productPrice);
		pro.setProductStock(productStock);
		pro.setProductSaleCount(productSales);
		pro.setProductLikeCount(productlike);
		pro.setProductDescript(productDescript);
		pro.setProductType(productType);
		pro.setBookNumber(bookNumber);
		pro.setWriterName(writerName);
		pro.setPublisher(publisher);
		pro.setEnrollDate(enrollDate);
		pro.setCategoty(category);
		pro.setContentList(contentList);
		
		System.out.println(productNumber);
		System.out.println(productName);
		System.out.println(type);
		System.out.println(value);
		
//		Part file = req.getPart("upload");
//
//		String originName = file.getSubmittedFileName();
//
//		InputStream fis = file.getInputStream();
//		
//		String realPath = req.getServletContext().getRealPath("./Resources/img/Bookcover");
//		
//		String filePath = realPath + File.separator + originName;
//		
//		FileOutputStream fos = new FileOutputStream(filePath);
//		
//		byte[] buf = new byte[1024];
//		int size = 0;
//		while ((size = fis.read(buf)) != -1) 
//		{
//			fos.write(buf, 0, size);
//		}
//		
//		fis.close();
//		fos.close();
//		
//		String imgPath1 = filePath.substring(filePath.lastIndexOf("WebContent")+10);
//		String imgPath2 = imgPath1.replace("\\", "/");
//		String imgPath3 = imgPath2.replace("/Resources", "./Resources");
//		
//		pro.setImageLink(imgPath3);
		
		int result = new ProbookService().bookupdate(pro, type, value);
		
		if (result > 0) 
		{
			req.getRequestDispatcher("./WEB-INF/views/Product_Books/a_book_update.jsp").forward(req, resp);
		}
		else 
		{	
			req.getRequestDispatcher("./WEB-INF/views/Product_Books/a_book_update.jsp").forward(req, resp);
		}

	}
}
