package com.dev.event.model.dao;

import static com.dev.common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.dev.event.model.vo.EventVo;

public class EventDao {
	public List<EventVo> eventList(Connection conn, int rowStartNo, int rowEndNo) {
		System.out.println("eventlist dao called...");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM ( SELECT ROW_NUMBER() OVER(ORDER BY N.N_NO DESC) AS RNUM, N.N_NO, N.N_TITLE,TRUNC(N.N_DATE) AS \"N_DATE\", N.N_VIEW FROM NOTICE N WHERE N_DEL_YN = 'N' ORDER BY N.N_NO DESC ) WHERE RNUM BETWEEN ? AND ?";
		List<EventVo> eventList = new ArrayList<EventVo>();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rowStartNo);
			pstmt.setInt(2, rowEndNo);
			rs = pstmt.executeQuery();
			EventVo e = null;
			
			while(rs.next()) {
				int eventNo = rs.getInt("N_NO");
				String nTitle = rs.getString("N_TITLE");
				Timestamp nDate = rs.getTimestamp("N_DATE");
				int nView = rs.getInt("N_VIEW");
				
				//모델에 넣어줌
				e = new EventVo();
				eventList.add(e);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return eventList;
	}

	public int totalCount(Connection conn) {
		System.out.println("eventlist dao called...");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT COUNT(*) FROM NOTICE WHERE N_DEL_YN = 'N'";
		
		int total = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			total = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		
		return total;
	}

	public int insertEvent(Connection conn, EventVo n) {
		String sql = "INSERT INTO NOTICE(N_NO, N_TITLE, N_CONTENT) VALUES(SEQ_NOTICE.NEXTVAL, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, n.getEventTitle());
			pstmt.setString(2, n.getEventContent());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public EventVo eventSelect(Connection conn, int eventNo) {
		String sql = "SELECT N.N_NO, N.N_TITLE, N.N_CONTENT, TRUNC(N.N_DATE) AS \"N_DATE\", N.N_VIEW FROM NOTICE N WHERE N_NO = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		EventVo e = new EventVo();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, eventNo);
			rs = pstmt.executeQuery();
				
			rs.next();
//			int eventNo = rs.getInt("N_NO");
			String nTitle = rs.getString("N_TITLE");
			String nContent = rs.getString("N_CONTENT");
			Timestamp nDate = rs.getTimestamp("N_DATE");
			int nView = rs.getInt("N_VIEW");
					
			//모델에 넣어줌
			e = new EventVo();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return e;
	}
	
	//event조회수 증가
	public void eventViewPlus(Connection conn, int eventNo) {
		String sql = "UPDATE NOTICE SET N_VIEW = N_VIEW +1 WHERE N_NO = ?";
		PreparedStatement pstmt = null;
		// 조회수 증가
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, eventNo);
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("조회수 추가 안됌");
		}
	}

	public int eventDelete(Connection conn, int eventNo) {
		String sql = "UPDATE NOTICE SET N_DEL_YN = 'Y' WHERE N_NO = ?";
		
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, eventNo);
			result = pstmt.executeUpdate();
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int eventUpdate(Connection conn, EventVo n) {
		String sql = "UPDATE NOTICE SET N_TITLE = ?, N_CONTENT = ? WHERE N_NO = ?";
		
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, n.getEventTitle());
			pstmt.setString(2, n.getEventContent());
			pstmt.setInt(3, n.getEventNo());
			result = pstmt.executeUpdate();
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
