package com.dev.progoods.model;

import java.sql.Connection;
import java.util.List;

import com.dev.paging.Paging;

import static com.dev.common.JDBCTemplate.*;

public class ProgoodsService {
	
	public int insert(ProgoodsVo g){
		
		Connection conn = getConnection();
		int insert = new ProgoodsDao().insertProG(conn, g);
		close(conn);
		return insert;
	}

	public int totalGoodsCount(String category) {
		Connection conn = getConnection();
		int total = new ProgoodsDao().totalCount(conn, category);
		close(conn);
		return total ;
	}
	
	public List<ProgoodsVo> goodsListAll(Paging page, String category) {
		Connection conn = getConnection();
		
		List<ProgoodsVo> goodsListAll = new ProgoodsDao().selectAll(conn, page, category);
		close(conn);
		
		System.out.println("=======¼­ºñ½º=================");
		System.out.println("curPage:"+ page.currentPage);
		System.out.println("startNo:"+ page.startNo());
		System.out.println("endNo:"+ page.endNo());
		System.out.println("prePage:"+ page.prePage());
		System.out.println("nextPage:"+ page.nextPage());
		System.out.println("category:"+category);
		System.out.println("========================");
		return goodsListAll;
	}


	public List<ProgoodsVo> likedesc(Paging page, String category) {
		Connection conn = getConnection();
		
		List<ProgoodsVo> goodsListAll = new ProgoodsDao().likedesc(conn, page, category);
		close(conn);
		return goodsListAll;
	}

	public List<ProgoodsVo> salesdesc(Paging page, String category) {
		Connection conn = getConnection();
		
		List<ProgoodsVo> goodsListAll = new ProgoodsDao().salesdesc(conn, page, category);
		close(conn);
		return goodsListAll;
	}

	
	
}
