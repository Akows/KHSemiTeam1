<%@page import="java.util.List"%>
<%@page import="com.dev.order.vo.CartVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="co"%>
    
    <%
    	List<CartVo> dataList = (List<CartVo>)request.getAttribute("data");
    %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>u6_장바구니</title>
	<link rel="stylesheet" href="./Resources/css/Order/u_cart.css">
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	
	<!-- Popper JS -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<%@ include file="../Common/u_menubar.jsp" %>

        <div class="homecart">
            <a href="#"><img src="Resources/img/i_con/home_icon.png"id="icon3"></a>
            <label> > </label>
            <a href="#" id="cart1">장바구니</a>
        </div>

        <br><br><br><br>

        <div class="t1">
            <table>
                <tr id="thead">
                    <th colspan="4"></th>
                    <th>장바구니</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>

                <tr class="tbody">
                    <td id="chb1"><input type="checkbox" name="chkAll" value="1" onchange="JavaScript:chkAllChange();"></td>
                    <td colspan="3" >상품명</td>
                    <td>단가</td>
                    <td>수량</td>
                    <td colspan="4">합계</td>
                    <td id="m2" colspan="4"></td>
                </tr>
       
<%
int totamt = 0;
int i = 0;
   for(CartVo c : dataList)
   {
   	int pro_no = c.getPro_no();
   	String pro_img = c.getPro_img();
  		String pro_name = c.getPro_name();
  		int unit_price = c.getUnit_price();
  		int quantity = c.getQuantity();
  		int amt = c.getAmt();
  		totamt = totamt + amt;
%>	 
                <tr>
                    <td id="chb1"><input type="checkbox" name="chkUnit" value="<%=pro_no%>" onchange="JavaScript:chkUnitChange();"></td>
                    <td colspan="2"><img src="<%=pro_img%>" id="img1"></td>
                    <td id="spm1"><%=pro_name%></td>
                    <td id="dg1"><%=unit_price%>원</td>
                    <td id="sl1"><%=quantity%></td>
                    <td id="hg1" colspan="4"><%=amt%>원</td>
                    <td  colspan="4"></td>
                </tr>
				<tr>
					<td colspan="11">
						<hr>
					</td>
				</tr>
<%
	i = i +1;
   }
%>                


<!--  
<co:forEach items="${dataList}" var="c">
	<tr>
         <td id="chb1"><input type="checkbox"></td>
         <td colspan="2"><img src="${c.pro_img}" id="img1"></td>
         <td id="spm1">${c.pro_name}</td>
         <td id="dg1">${c.unit_price}원</td>
         <td id="sl1">${c.quantity}</td>
         <td id="hg1" colspan="4">${c.amt}원</td>
         <td colspan="4"></td>
    </tr>
	<tr>
		<td colspan="11">
			<hr>
		</td>
	</tr>
</co:forEach>
-->	
                <tr>
                    <td colspan="2"><input type="submit" id="choice" value="선택상품삭제"></td>
                    <td colspan="2"><input type="submit" id="all" value="전체상품삭제"></td>
                    <td colspan="6"></td>
                </tr>
            </table>

               
        </div>

        <div class="t2">
            <table >
                <tr>
                    <th></th>
                    <th><input type="checkbox"></th>
                    <th id="jp">주문내역확인 동의서(필수)</th>
                    <th></th>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td id="gg1-1"><b>결제수단</b></td>
                    <td>
                        <select>
                            <option>-------------------------</option>
                            <option>카드결제</option>
                            <option>무통장입금</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td id="gg1-1"><b>포인트 사용</b></td>
                    <td><input type="text"  onkeydown="" id="target" placeholder="100원부터 입력" ></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td id="gg1-2"><b>합계</b></td>
                    <td><input type="text" placeholder="총 합계 금액" value="<%=totamt%>원"></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td colspan="2"><input type="submit" id="payment" value="결제하기"  ></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
       
       
       
   <script type="text/javascript">
	   //'전체' 선택 시 전부 체크하기
	   function chkAllChange()
	   {
		    var chk = document.getElementsByName("chkAll")[0].checked;
	        var arrChk = document.getElementsByName("chkUnit");
	        for(var i = 0; i < arrChk.length; i++) { arrChk[i].checked = chk; }
	   }
	   //'전체' 선택 해제 시 전부 체크해제
	   function chkUnitChange()
	   {
	       var chk = true;
	       var arrChk = document.getElementsByName("chkUnit");
	       for(var i = 0; i < arrChk.length; i++)
	       {
	    	   if ( arrChk[i].checked == false ) { chk = false; }
	       }
	       document.getElementsByName("chkAll")[0].checked = chk;
	   }
   
	   
	   //포인트 차감 안됨 ㅠㅠㅠㅠ
	   /*
	   $('#target').keydown(function() 
		{ 
		   $('#target').keydown(); 
		}
	   );
	   */
	   
   </script>
      
    <%--<%@ include file="../Common/u_footer.jsp" %> --%>	
</body>
</html>


