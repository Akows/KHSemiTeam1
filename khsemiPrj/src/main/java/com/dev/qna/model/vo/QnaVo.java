package com.dev.qna.model.vo;

import java.sql.Timestamp;

public class QnaVo {
	private int qnaNo;
	private String qnaTitle;
	private Timestamp qnaDate;
	private String qnaId;
	private int qnaView;
	
	public QnaVo() {

	}
	
	public QnaVo(int qnaNo, String qnaTitle, Timestamp qnaDate, String qnaId, int qnaView) {
		this.qnaNo = qnaNo;
		this.qnaTitle = qnaTitle;
		this.qnaDate = qnaDate;
		this.qnaId = qnaId;
		this.qnaView = qnaView;
	}
	
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public Timestamp getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(Timestamp qnaDate) {
		this.qnaDate = qnaDate;
	}
	public String getQnaId() {
		return qnaId;
	}
	public void setQnaId(String qnaId) {
		this.qnaId = qnaId;
	}
	public int getQnaView() {
		return qnaView;
	}
	public void setQnaView(int qnaView) {
		this.qnaView = qnaView;
	}

	@Override
	public String toString() {
		return "QnaVo [qnaNo=" + qnaNo + ", qnaTitle=" + qnaTitle + ", qnaDate=" + qnaDate + ", qnaId=" + qnaId
				+ ", qnaView=" + qnaView + "]";
	}
	
}
