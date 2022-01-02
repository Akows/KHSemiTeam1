package com.dev.qna.model.service;

import java.sql.Connection;
import java.util.List;

import static com.dev.common.JDBCTemplate.*;

import com.dev.paging.Paging;
import com.dev.qna.model.dao.QnaDao;
import com.dev.qna.model.vo.QnaVo;

public class QnaService {
	
	//qna리스트 조회
	public List<QnaVo> qnaList(Paging page) {
		//커넥션 
		Connection conn = getConnection();
		
		int rowStartNo = page.rowStarNo();
		int rowEndNo = page.rowEndNo();
		
		System.out.println("selectQnaLiust currenpage = "+ page.currentPage);
		System.out.println("selectQnaLiust startno = "+ page.startNo());
		
		List<QnaVo> qnaList = new QnaDao().qnaList(conn, rowStartNo, rowEndNo);
		System.out.println("qnaservice.qnaList called... ");
		close(conn);
		
		return qnaList;
	}
	
	//qna 글 개수 확인
	public int totalQnaCount() {
		//커넥션 
		Connection conn = getConnection();
		
		int total = new QnaDao().totalCount(conn);
		
		return total;
	}

	//qna 글 작성
	public int writeQna(QnaVo q) {
		//커넥션 
		Connection conn = getConnection();
		
		int result = 0;
		result = insertQna(conn, q);

		
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}

	private int insertQna(Connection conn, QnaVo q) {
		//dao 불러서 쿼리 실행
		//dao 한테 쿼리 실행 결과 받기
		return new QnaDao().insertQna(conn, q);
	}

	
}
