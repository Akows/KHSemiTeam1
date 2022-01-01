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
	public List<QnaVo> selectQnaList(Connection conn) {
		System.out.println("qnalist dao called...");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT Q.Q_NO, Q.Q_TITLE,TRUNC(Q.Q_DATE) AS \"Q_DATE\", M.ID, Q.Q_VIEW FROM QNA Q JOIN MEMBER M ON Q.M_NO = M.M_NO ORDER BY Q.Q_NO DESC";
		List<QnaVo> qnaList = new ArrayList<QnaVo>();
		try {
			pstmt = conn.prepareStatement(sql);
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

}
