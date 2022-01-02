package com.dev.qna.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import static com.dev.common.JDBCTemplate.*;
import com.dev.qna.model.vo.QnaVo;

public class QnaDao {
	public List<QnaVo> qnaList(Connection conn, int rowStartNo, int rowEndNo) {
		System.out.println("qnalist dao called...");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM ( SELECT ROW_NUMBER() OVER(ORDER BY Q.Q_NO DESC) AS RNUM, Q.Q_NO, Q.Q_TITLE,TRUNC(Q.Q_DATE) AS \"Q_DATE\", M.ID, Q.Q_VIEW FROM QNA Q JOIN MEMBER M ON Q.M_NO = M.M_NO WHERE Q_DEL_YN = 'N' ORDER BY Q.Q_NO DESC ) WHERE RNUM BETWEEN ? AND ?";
		List<QnaVo> qnaList = new ArrayList<QnaVo>();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rowStartNo);
			pstmt.setInt(2, rowEndNo);
			rs = pstmt.executeQuery();
			QnaVo q = null;
			
			while(rs.next()) {
				int qnaNo = rs.getInt("Q_NO");
				String qTitle = rs.getString("Q_TITLE");
				Timestamp qDate = rs.getTimestamp("Q_DATE");
				String qId = rs.getString("ID");
				int qView = rs.getInt("Q_VIEW");
				
				//모델에 넣어줌
				q = new QnaVo(qnaNo, qTitle, qDate, qId, qView);
				qnaList.add(q);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return qnaList;
	}

	public int totalCount(Connection conn) {
		System.out.println("qnalist dao called...");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT COUNT(*) FROM QNA WHERE Q_DEL_YN = 'N'";
		
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

	public int insertQna(Connection conn, QnaVo q) {
		String sql = "INSERT INTO QNA(Q_NO, M_NO, Q_TITLE, Q_CONTENT ) VALUES(SEQ_QNA.NEXTVAL, ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			//pstmt.setInt(1, q.getQnaId()); 세션 처리 끝난 후 사용할 쿼리
			//pstmt.setInt(1, 3); 임시로 사용
			pstmt.setInt(1, 3);
			pstmt.setString(2, q.getQnaTitle());
			pstmt.setString(3, q.getQnaContent());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
