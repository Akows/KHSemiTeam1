package com.dev.paging;

public class Paging {

	 public int rowNo = 5;
	 public int size = 5;
	 public int totalRowCount = 0;
	    
	 public int currentPage = 0;

	 public Paging(int rowNo, int size, int totalRowCount, int currentPage){
	     this.rowNo = rowNo;
	     this.size = size;
	     this.totalRowCount = totalRowCount;
	     this.currentPage = currentPage;
	 }
	    
	 public int maxPage() {
	     int maxpage;
	     if(totalRowCount % rowNo !=0) {
	         maxpage = totalRowCount/rowNo + 1;
	     }else {
	         maxpage = totalRowCount/rowNo;
	     }
	     return maxpage;
	 }
	  
	 public int startNo() {
	     return ((currentPage-1)/size)*size+1;
	 }
	    
	 public int endNo() {
	     return (((currentPage-1)/size) +1)*size;
	 }
	    
	 public boolean isPre() {
	     boolean b =false;
	     if(startNo() != 1) {
	         b = true;
	     }else {
	         b = false;
	     }
	     return b;
	 }
	  
	 public boolean isNext() {
	     boolean b = false;
	     if(endNo()>=maxPage()) {
	         b=false;
	     }else {
	         b=true;
	     }
	     return b;
	 }
	    
}
