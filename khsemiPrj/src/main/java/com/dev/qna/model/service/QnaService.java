package com.dev.qna.model.service;

import java.sql.Connection;
import java.util.List;

import static com.dev.common.JDBCTemplate.*;

import com.dev.event.model.dao.EventDao;
import com.dev.event.model.vo.EventVo;
import com.dev.notice.model.dao.NoticeDao;
import com.dev.notice.model.vo.NoticeVo;
import com.dev.paging.Paging;
import com.dev.qna.model.dao.QnaDao;
import com.dev.qna.model.vo.QnaAnswersVo;
import com.dev.qna.model.vo.QnaVo;

public class QnaService {
	
	//qna리스트 조회
	public List<QnaVo> qnaList(Paging page) {
		//커넥션 
		Connection conn = getConnection();
		
		int rowStartNo = page.rowStarNo();
		int rowEndNo = page.rowEndNo();
		
		System.out.println("selectQnaList currenpage = "+ page.currentPage);
		System.out.println("selectQnaList startno = "+ page.startNo());
		
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

	public QnaVo qnaSelect(int qnaNo) {
		//커넥션 
		Connection conn = getConnection();
				
		QnaDao qd = new QnaDao();
		QnaVo q = qd.qnaSelect(conn, qnaNo);
		qd.qnaViewPlus(conn, qnaNo);
		
		System.out.println("qnaservice.qnaselect called... ");
		close(conn);
				
		return q;
	}

	public int qnaDelete(int qnaNo) {
		//커넥션 
		Connection conn = getConnection();
						
		int result = new QnaDao().qnaDelete(conn, qnaNo);
		System.out.println("qnaservice.qnadelete called... ");
		close(conn);
		
		return result;
	}

	public int qnaUpdate(QnaVo q) {
		//커넥션 
		Connection conn = getConnection();
								
		int result = new QnaDao().qnaUpdate(conn, q);
		
		System.out.println("qnaservice.qnaupdate called... ");
		close(conn);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}

	//qna 답변 작성
	public int writeQnaAnswers(QnaAnswersVo a) {
		// 커넥션
		Connection conn = getConnection();

		int result = 0;
		result = insertQnaAnswers(conn, a);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}

	//답변 작성
	private int insertQnaAnswers(Connection conn, QnaAnswersVo a) {
		//dao 불러서 쿼리 실행
		//dao 한테 쿼리 실행 결과 받기
		return new QnaDao().insertQnaAnswers(conn, a);
	}

	//답변 조회
	public QnaAnswersVo ansSelect(int qnaNo) {
		//커넥션 
		Connection conn = getConnection();

		QnaAnswersVo a = new QnaDao().ansSelect(conn, qnaNo);
		System.out.println("qnaservice.ansselect called... ");
		close(conn);

		return a;
	}
	
	//공지작성
	public int writeNotice(NoticeVo n) {
		//커넥션 
		Connection conn = getConnection();

		int result = 0;
		result = insertNotice(conn, n);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}

	private int insertNotice(Connection conn, NoticeVo n) {
		return new NoticeDao().insertNotice(conn, n);
	}

	public int writeEvent(EventVo e) {
		//커넥션 
		Connection conn = getConnection();

		int result = 0;
		result = insertEvent(conn, e);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}

	private int insertEvent(Connection conn, EventVo e) {
		return new EventDao().insertEvent(conn, e);
	}
	
}
