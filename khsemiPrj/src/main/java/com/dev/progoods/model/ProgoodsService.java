package com.dev.progoods.model;

import java.sql.Connection;
import java.util.List;

import static com.dev.common.JDBCTemplate.*;

public class ProgoodsService {
	
	public int insert(ProgoodsVo g){
		
		Connection conn = getConnection();
		return new ProgoodsDao().insertProG(conn, g);	
	}

	public List<ProgoodsVo> selectAll() {
		Connection conn = getConnection();
		
		return new ProgoodsDao().selectAll(conn);
	}
	
	
}
