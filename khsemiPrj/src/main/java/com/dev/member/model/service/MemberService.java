package com.dev.member.model.service;

import java.sql.Connection;
import java.sql.SQLException;

import static com.dev.common.JDBCTemplate.*;

import com.dev.member.model.dao.MemberDao;
import com.dev.member.model.vo.MemberVo;

public class MemberService {

	public int join(MemberVo m) {
		
		// DB Connection 가져오기
		Connection conn = getConnection();
		
		// 쿼리 날리기 // insert
		int result = 0;
		try {
			result = insertMember(conn, m);
			if(result > 0) {
				commit(conn);
			} else {
				rollback(conn);
			}
		} catch (SQLException e) {
			rollback(conn);
			e.printStackTrace();
		} finally {
			close(conn);
		}
		
		// 결과 반환
		return result;
	}

	public int insertMember(Connection conn, MemberVo m) throws SQLException {
		
		// dao 불러서 쿼리 실행
		// dao 한테 쿼리 실행 결과 받아서, 비즈니스 로직 처리
		return new MemberDao().insertMember(conn, m);
		
	}
	
}
