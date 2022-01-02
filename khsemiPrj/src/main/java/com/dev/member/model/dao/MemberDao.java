package com.dev.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dev.common.JDBCTemplate;
import com.dev.member.model.vo.MemberVo;

public class MemberDao {

	public int insertMember(Connection conn, MemberVo m) throws SQLException {
		
		// 쿼리 날리기
		String sql = "INSERT INTO MEMBER (M_NO, ID, PWD, NAME, EMAIL, PHONE, ENT_YN, POINT, HIRE_DATE, ADDR, ADDR_DETAIL) "
				+ 	 "VALUES (SEQ.MEMBER.NEXTVAL, ?, ?, ?, ?, ?, 'N', '500', SYSDATE, ?, ?)";
		
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, m.getUserEmail());
			pstmt.setInt(5, 01054103510);
			pstmt.setString(6, m.getAddress());
			pstmt.setString(7, m.getAddrDetail());
			
			result = pstmt.executeUpdate();

		} finally {
			
			JDBCTemplate.close(pstmt);
			
		}
		
		return result;
	}

}
