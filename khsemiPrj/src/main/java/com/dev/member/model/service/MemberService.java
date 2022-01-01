package com.dev.member.model.service;

import java.sql.Connection;

import static com.dev.common.JDBCTemplate.*;

import com.dev.member.model.dao.MemberDao;
import com.dev.member.model.vo.MemberVo;

public class MemberService {

	public int join(MemberVo m) {
		
		// DB Connection 가져오기
		Connection conn = getConnection();
		
		// 쿼리 날리기 // insert
		int result = insertMember(conn, m);
		
		// 결과 반환
		
		close(conn);
		
		return 0;
	}

	public int insertMember(Connection conn, MemberVo m) {
		
		// dao 불러서 쿼리 실행
		int result = new MemberDao().insertMember(conn);
		
		// dao 한테 쿼리 실행 결과 받아서, 비즈니스 로직 처리
		
	}
	
}
