package com.dev.review.goods.controller;

import static com.dev.common.JDBCTemplate.close;
import static com.dev.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.dev.progoods.model.ProgoodsDao;
import com.dev.review.goods.medel.dao.MdReviewDao;

public class MdReviewService {

	public int totalMdReviewCount(int pro_no) {
		Connection conn = getConnection();
//		int total = new MdReviewDao().totalReviewCount(conn, pro_no);
		close(conn);
		return 0;
	}

}
