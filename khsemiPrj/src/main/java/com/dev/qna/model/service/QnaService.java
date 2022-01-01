package com.dev.qna.model.service;

import java.sql.Connection;
import java.util.List;

import static com.dev.common.JDBCTemplate.*;
import com.dev.qna.model.dao.QnaDao;
import com.dev.qna.model.vo.QnaVo;

public class QnaService {

	public List<QnaVo> selectQnaList() {
		//커넥션 
		Connection conn = getConnection();
		
		List<QnaVo> qnaList = new QnaDao().selectQnaList(conn);
		System.out.println("qnaservice.qnaList called... ");
		close(conn);
		
		return qnaList;
	}
	
}
