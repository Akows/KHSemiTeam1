package com.dev.progoods.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static com.dev.common.JDBCTemplate.*;

public class ProgoodsDao {
	
	public int insertProG(Connection conn, ProgoodsVo g) {
		
		String sql = "INSERT ALL INTO PRO_INF "
				+ "VALUES(SEQ_PRO_INF.NEXTVAL,?,?,?,?,0,0,?,'±ÂÁî') "
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
			commit(conn);	
			
		} catch (SQLException e) {
			System.out.println("sql error");
			rollback(conn);
		}finally {
				close(conn);
				close(pstmt);
		}		
		return result;
	}

	public List<ProgoodsVo> selectAll(Connection conn) {
				
		String sql = "SELECT * FROM PRO_INF P, MD_INF M WHERE P.PRO_NO = M.MD_NO;";
		
		PreparedStatement pstmt = null;
		
		List<ProgoodsVo> goodsListAll = new ArrayList<ProgoodsVo>();
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery();
			commit(conn);	
			
		} catch (SQLException e) {
			System.out.println("sql error");
			rollback(conn);
		}finally {
				close(conn);
				close(pstmt);
				close(rs);
		}
		
		return null;
	}


}
