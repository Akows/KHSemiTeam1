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
	
	public List<ProgoodsVo> goodsList(Paging page, String category) {
		Connection conn = getConnection();
		
		int rowStartNo = page.rowStarNo();
		int rowEndNo = page.rowEndNo();
		
		List<ProgoodsVo> goodsListAll = new ProgoodsDao().categoryGoods(conn, rowStartNo, rowEndNo, category);
		close(conn);
		
		System.out.println("=======서비스================");
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

	public int totalGoodsCountAll() {
		Connection conn = getConnection();
		int total = new ProgoodsDao().totalCountAll(conn);
		close(conn);
		return total ;
		
	}

	public List<ProgoodsVo> goodsAll(Paging page) {
		Connection conn = getConnection();
		
		int rowStartNo = page.rowStarNo();
		int rowEndNo = page.rowEndNo();
		
		List<ProgoodsVo> goodsListAll = new ProgoodsDao().goodsAll(conn, rowStartNo, rowEndNo);
		close(conn);
		return goodsListAll;
	}

	
	
}
