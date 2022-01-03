package com.dev.member.model.dao;

import static com.dev.common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import com.dev.common.JDBCTemplate;
import com.dev.member.model.vo.MemberVo;

public class MemberDao {

	public int insertMember(Connection conn, MemberVo m) throws SQLException {
		
		// 쿼리 날리기
		String sql = "INSERT INTO MEMBER (M_NO, ID, PWD, NAME, EMAIL, PHONE, ADDR, ADDR_DETAIL, YY, MM, DD) "
				+ 	 "VALUES (SEQ_MEMBER.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, m.getUserEmail());
			pstmt.setString(5, m.getUserPhone());
			pstmt.setString(6, m.getAddr());
			pstmt.setString(7, m.getAddrDetail());
			pstmt.setString(8, m.getYy());
			pstmt.setString(9, m.getMm());
			pstmt.setString(10, m.getDd());
			
			
			result = pstmt.executeUpdate();

		} finally {
			
			JDBCTemplate.close(pstmt);
			
		}
		
		return result;
	}

	public int selectMemberId(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		String sql = "SELECT COUNT(*) FROM MEMBER WHERE ID = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			
			rs.next();
			result = rs.getInt(1);
			
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return result;
	}

	public MemberVo selectMember(Connection conn, MemberVo m) {
		String query = "SELECT * FROM MEMBER WHERE ID = ? AND ENT_YN = 'N'";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVo selectedMember = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getUserId());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int memberNo = rs.getInt("M_NO");
				String userId = rs.getString("ID");
				String userPwd = rs.getString("PWD");
				String userName = rs.getString("NAME");
				String userEmail = rs.getString("EMAIL");
				String userPhone = rs.getString("PHONE");
				String entYn = rs.getString("ENT_YN");
				int point = rs.getInt("POINT");
				Timestamp hireDate = rs.getTimestamp("HIRE_DATE");
				int reportCount = rs.getInt("REPORT_COUNT");
				int reviewtCount = rs.getInt("REVIEW_COUNT");
				int qnaCount = rs.getInt("QNA_COUNT");
				Timestamp updateDate = rs.getTimestamp("UPDATE_DATE");
				String addr = rs.getString("ADDR");
				String addrDetail = rs.getString("ADDR_DETAIL");
				String yy = rs.getString("YY");
				String mm = rs.getString("MM");
				String dd = rs.getString("DD");
				
				selectedMember = new MemberVo();
				selectedMember.setMemberNo(memberNo);
				selectedMember.setUserId(userId);
				selectedMember.setUserPwd(userPwd);
				selectedMember.setUserName(userName);
				selectedMember.setUserEmail(userEmail);
				selectedMember.setUserPhone(userPhone);
				selectedMember.setEntYn(entYn);
				selectedMember.setPoint(point);
				selectedMember.setHireDate(hireDate);
				selectedMember.setReportCount(reportCount);
				selectedMember.setReviewtCount(reviewtCount);
				selectedMember.setQnaCount(qnaCount);
				selectedMember.setUpdateDate(updateDate);
				selectedMember.setAddr(addr);
				selectedMember.setAddrDetail(addrDetail);
				selectedMember.setYy(yy);
				selectedMember.setMm(mm);
				selectedMember.setDd(dd);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
			
		}		
		
		return selectedMember;
	}
	
	public String findId(String userName, String userPhone) {
		
		// 아이디 찾기
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String id = null;
		
		String sql = "SELECT ID FROM MEMBER WHERE NAME = ? AND PHONE = ? ";
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userName);
			pstmt.setString(2, userPhone);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				id = rs.getString("userId");
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}

}
