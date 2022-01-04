package com.dev.progoods.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.dev.paging.Paging;
import com.dev.qna.model.vo.QnaVo;

import static com.dev.common.JDBCTemplate.*;

public class ProgoodsDao {
	
	public int insertProG(Connection conn, ProgoodsVo g) {
		
		String sql = "INSERT ALL INTO PRO_INF "
				+ "VALUES(SEQ_PRO_INF.NEXTVAL,?,?,?,?,0,0,?,'����') "
				+ "INTO MD_INF "
				+ "VALUES(SEQ_MD_INF.NEXTVAL,SEQ_PRO_INF.NEXTVAL,?,?,?) "
				+ "SELECT * FROM DUAL";
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,g.getPro_name());
			pstmt.setString(2,g.getPro_img());
			pstmt.setInt(3,g.getUnit_price());
			pstmt.setInt(4,g.getStock());
			pstmt.setString(5,g.getDescription());
			
			pstmt.setString(6,g.getMd_cate());
			pstmt.setString(7,g.getMaker());
			pstmt.setString(8,g.getCountry());
			
			result = pstmt.executeUpdate();
			if(result != 0) {
				commit(conn);	
			}
			
		} catch (SQLException e) {
			System.out.println("sql error");
			rollback(conn);
		}finally {
				close(pstmt);
		}		
		return result;
	}

	public List<ProgoodsVo> categoryGoods(Connection conn, int rowStartNo, int rowEndNo, String category) {
				
		String sql = "SELECT * FROM (SELECT ROWNUM AS RNUM, P.*, M.MD_NO,M.MD_CATE,M.MAKER,M.COUNTRY FROM PRO_INF P JOIN MD_INF M ON P.PRO_NO = M.MD_NO WHERE M.MD_CATE=?) WHERE RNUM BETWEEN ? AND ?";
		
		
		String category2 = category;
				
		PreparedStatement pstmt = null;
		
		List<ProgoodsVo> goodsListAll = new ArrayList<ProgoodsVo>();
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category2);
			pstmt.setInt(2, rowStartNo);
			pstmt.setInt(3, rowEndNo);
			
			rs = pstmt.executeQuery();
			ProgoodsVo p = null;
			while(rs.next()) {
				int pro_no =rs.getInt("PRO_NO");
				int sales =rs.getInt("SALES");
				int pro_like =rs.getInt("PRO_LIKE");
				String pro_type =rs.getString("PRO_TYPE");
				int md_no =rs.getInt("MD_NO");
				
				String pro_name =rs.getString("PRO_NAME");
				String pro_img =rs.getString("PRO_IMG");
				int unit_price =rs.getInt("UNIT_PRICE");
				int stock =rs.getInt("STOCK"); 
				String description =rs.getString("DESCRIPTION");
				String md_cate =rs.getString("MD_CATE");
				String maker =rs.getString("MAKER");
				String country =rs.getString("COUNTRY");
				
				p = new ProgoodsVo();
				p.setCountry(country);
				p.setDescription(description);
				p.setMaker(maker);
				p.setMd_cate(md_cate);
				p.setMd_no(md_no);
				p.setPro_img(pro_img);
				p.setPro_like(pro_like);
				p.setPro_name(pro_name);
				p.setPro_no(pro_no);
				p.setPro_type(pro_type);
				p.setSales(sales);
				p.setStock(stock);
				p.setUnit_price(unit_price);
				
				goodsListAll.add(p);
			}
			
			
		} catch (SQLException e) {
			System.out.println("sql error");
			e.printStackTrace();
		}finally {
				close(pstmt);
				close(rs);
		}
		
		return goodsListAll;
	}

	
	public int totalCount(Connection conn, String category) {
		int total = 0 ;
		String sql = "SELECT COUNT(*) FROM MD_INF WHERE MD_CATE=?";
		String category2 = category;
		PreparedStatement pstmt = null;
		
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category2);
			rs = pstmt.executeQuery();
		    rs.next();
		    
		    total = rs.getInt(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return total;
	}

	public List<ProgoodsVo> likedesc(Connection conn, Paging page, String category) {
		
		String sql ="SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY P.PRO_LIKE DESC) AS RNUM, P.*, M.MD_NO,M.MD_CATE,M.MAKER,M.COUNTRY FROM PRO_INF P JOIN MD_INF M ON P.PRO_NO = M.MD_NO WHERE M.MD_CATE=? ORDER BY P.PRO_LIKE DESC) WHERE RNUM BETWEEN ? AND ?"; 
		
		int rowStartNo = page.rowStarNo();
		int rowEndNo = page.rowEndNo();
		String category2 = category;
		
		System.out.println("DAO currenpage = "+ page.currentPage);
		System.out.println("DAO startno = "+ page.startNo());
		
		PreparedStatement pstmt = null;
		
		List<ProgoodsVo> goodsListAll = new ArrayList<ProgoodsVo>();
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category2);
			pstmt.setInt(2, rowStartNo);
			pstmt.setInt(3, rowEndNo);
			
			rs = pstmt.executeQuery();
			ProgoodsVo p = null;
			while(rs.next()) {
				int pro_no =rs.getInt("PRO_NO");
				int sales =rs.getInt("SALES");
				int pro_like =rs.getInt("PRO_LIKE");
				String pro_type =rs.getString("PRO_TYPE");
				int md_no =rs.getInt("MD_NO");
				
				String pro_name =rs.getString("PRO_NAME");
				String pro_img =rs.getString("PRO_IMG");
				int unit_price =rs.getInt("UNIT_PRICE");
				int stock =rs.getInt("STOCK"); 
				String description =rs.getString("DESCRIPTION");
				String md_cate =rs.getString("MD_CATE");
				String maker =rs.getString("MAKER");
				String country =rs.getString("COUNTRY");
				
				p = new ProgoodsVo();
				p.setCountry(country);
				p.setDescription(description);
				p.setMaker(maker);
				p.setMd_cate(md_cate);
				p.setMd_no(md_no);
				p.setPro_img(pro_img);
				p.setPro_like(pro_like);
				p.setPro_name(pro_name);
				p.setPro_no(pro_no);
				p.setPro_type(pro_type);
				p.setSales(sales);
				p.setStock(stock);
				p.setUnit_price(unit_price);
				
				goodsListAll.add(p);
			}
			
			
		} catch (SQLException e) {
			System.out.println("sql error");
			e.printStackTrace();
		}finally {
				close(pstmt);
				close(rs);
		}
		
		return goodsListAll;
		
	}

	
	public List<ProgoodsVo> salesdesc(Connection conn, Paging page, String category) {
		
		String sql ="SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY P.SALES DESC) AS RNUM, P.*, M.MD_NO,M.MD_CATE,M.MAKER,M.COUNTRY FROM PRO_INF P JOIN MD_INF M ON P.PRO_NO = M.MD_NO WHERE M.MD_CATE=? ORDER BY P.SALES DESC) WHERE RNUM BETWEEN ? AND ?"; 
		
		int rowStartNo = page.rowStarNo();
		int rowEndNo = page.rowEndNo();
		String category2 = category;
		
		System.out.println("DAO currenpage = "+ page.currentPage);
		System.out.println("DAO startno = "+ page.startNo());
		
		PreparedStatement pstmt = null;
		
		List<ProgoodsVo> goodsListAll = new ArrayList<ProgoodsVo>();
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category2);
			pstmt.setInt(2, rowStartNo);
			pstmt.setInt(3, rowEndNo);
			
			rs = pstmt.executeQuery();
			ProgoodsVo p = null;
			while(rs.next()) {
				int pro_no =rs.getInt("PRO_NO");
				int sales =rs.getInt("SALES");
				int pro_like =rs.getInt("PRO_LIKE");
				String pro_type =rs.getString("PRO_TYPE");
				int md_no =rs.getInt("MD_NO");
				
				String pro_name =rs.getString("PRO_NAME");
				String pro_img =rs.getString("PRO_IMG");
				int unit_price =rs.getInt("UNIT_PRICE");
				int stock =rs.getInt("STOCK"); 
				String description =rs.getString("DESCRIPTION");
				String md_cate =rs.getString("MD_CATE");
				String maker =rs.getString("MAKER");
				String country =rs.getString("COUNTRY");
				
				p = new ProgoodsVo();
				p.setCountry(country);
				p.setDescription(description);
				p.setMaker(maker);
				p.setMd_cate(md_cate);
				p.setMd_no(md_no);
				p.setPro_img(pro_img);
				p.setPro_like(pro_like);
				p.setPro_name(pro_name);
				p.setPro_no(pro_no);
				p.setPro_type(pro_type);
				p.setSales(sales);
				p.setStock(stock);
				p.setUnit_price(unit_price);
				
				goodsListAll.add(p);
			}
			
			
		} catch (SQLException e) {
			System.out.println("sql error");
			e.printStackTrace();
		}finally {
				close(pstmt);
				close(rs);
		}
		
		return goodsListAll;
		
	}

	public int totalCountAll(Connection conn) {
		int total = 0 ;
		String sql = "SELECT COUNT(*) FROM MD_INF";

		PreparedStatement pstmt = null;
		
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
		    rs.next();
		    
		    total = rs.getInt(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return total;
	}

	public List<ProgoodsVo> goodsAll(Connection conn, int rowStartNo, int rowEndNo) {
		String sql = "SELECT * FROM (SELECT ROWNUM AS RNUM, P.*, M.MD_NO,M.MD_CATE,M.MAKER,M.COUNTRY FROM PRO_INF P JOIN MD_INF M ON P.PRO_NO = M.MD_NO) WHERE RNUM BETWEEN ? AND ?";
		
		PreparedStatement pstmt = null;
		
		List<ProgoodsVo> goodsListAll = new ArrayList<ProgoodsVo>();
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rowStartNo);
			pstmt.setInt(2, rowEndNo);
			
			rs = pstmt.executeQuery();
			ProgoodsVo p = null;
			while(rs.next()) {
				int pro_no =rs.getInt("PRO_NO");
				int sales =rs.getInt("SALES");
				int pro_like =rs.getInt("PRO_LIKE");
				String pro_type =rs.getString("PRO_TYPE");
				int md_no =rs.getInt("MD_NO");
				
				String pro_name =rs.getString("PRO_NAME");
				String pro_img =rs.getString("PRO_IMG");
				int unit_price =rs.getInt("UNIT_PRICE");
				int stock =rs.getInt("STOCK"); 
				String description =rs.getString("DESCRIPTION");
				String md_cate =rs.getString("MD_CATE");
				String maker =rs.getString("MAKER");
				String country =rs.getString("COUNTRY");
				
				p = new ProgoodsVo();
				p.setCountry(country);
				p.setDescription(description);
				p.setMaker(maker);
				p.setMd_cate(md_cate);
				p.setMd_no(md_no);
				p.setPro_img(pro_img);
				p.setPro_like(pro_like);
				p.setPro_name(pro_name);
				p.setPro_no(pro_no);
				p.setPro_type(pro_type);
				p.setSales(sales);
				p.setStock(stock);
				p.setUnit_price(unit_price);
				
				goodsListAll.add(p);
			}
			
			
		} catch (SQLException e) {
			System.out.println("sql error");
			e.printStackTrace();
		}finally {
				close(pstmt);
				close(rs);
		}
		
		return goodsListAll;
	}
	
	
	

}
