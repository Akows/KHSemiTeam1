<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>u6_��ٱ���</title>
	<link rel="stylesheet" href="./Resources/Order/u6.css">
</head>
<body>
	<nav>
        <img src="Resources/img/Logo/�ΰ� ���� ���׷��� s.png"  id="icon1">
        <img src="Resources/img/Logo/�ΰ� ���� ���׷��� s.png" id="icon2">

        <ul id="navi">
            <li><a href="#">ī�װ�</a></li>
            <li><a href="#">����Ʈ</a></li>
            <li><a href="#">�Ż�ǰ</a></li>
            <li><a href="#">QnA</a></li>
            

            <div id="search">
                <input type="text" placeholder="������ �Է����ּ���" >
                <button>�˻�</button>
            </div>

            <li id="lojo"><a href="#">�α���</a> <label> | </label> <a href="#">ȸ������</a></li>
        </ul>
    </nav>

        <div class="homecart">
            <a href="#"><img src="Resources/img/i_con/home_icon.png"id="icon3"></a>
            <label> > </label>
            <a href="#" id="cart1">��ٱ���</a>
        </div>

        <br><br><br><br>

        <div class="t1">
            <table >
                <tr id="thead">
                    <th colspan="4"></th>
                    <th>��ٱ���</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>

                <tr class="tbody">
                        <td id="chb1"><input type="checkbox"></td>
                        <td colspan="3" >��ǰ��</td>
                        <td>�ܰ�</td>
                        <td>����</td>
                        <td colspan="4">�հ�</td>
                        <td id="m2" colspan="4"></td>
                </tr>

                <tr>
                        <td id="chb1"><input type="checkbox"></td>
                        <td colspan="2"><img src="Resources/img/Bookcover/book_unity.png" id="img1"></td>
                        <td id="spm1">����Ƽ ����� ���� ����/������</td>
                        <td id="dg1">36,000��</td>
                        <td id="sl1">2</td>
                        <td id="hg1" colspan="4">72,000��</td>
                        <td  colspan="4"></td>
                </tr>
                
				<tr>
					<td colspan="11">
						<hr>
					</td>
				</tr>
				
                <tr>
                        <td id="chb1"><input type="checkbox"></td>
                        <td colspan="2"><img src="Resources/img/Bookcover/book_ml.png" id="img2"> </td>
                        <td id="spm1">ȥ�� �����ϴ� �ӽŷ���/���ؼ�</td>
                        <td id="dg1">23,400��</td>
                        <td id="sl1">1</td>
                        <td id="hg1" colspan="4" >23,400��</td>
                        <td colspan="4"></td>
                </tr>

                <tr>
                    <td colspan="2"><input type="submit" id="choice" value="���û�ǰ����"></td>
                    <td colspan="2"><input type="submit" id="all" value="��ü��ǰ����"></td>
                    <td colspan="6"></td>
                </tr>
            </table>

                <hr>
        </div>

        <div class="t2">
            <table >
                <tr>
                    <th></th>
                    <th><input type="checkbox"></th>
                    <th id="jp">�ֹ�����Ȯ�� ���Ǽ�(�ʼ�)</th>
                    <th></th>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td id="gg1-1"><b>��������</b></td>
                    <td>
                        <select>
                            <option>---------------------------------</option>
                            <option>ī�����</option>
                            <option>�������Ա�</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td id="gg1-1"><b>����Ʈ ���</b></td>
                    <td><input type="text" placeholder="100������ �Է�"></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td id="gg1-2"><b>�հ�</b></td>
                    <td><input type="text" placeholder="�� �հ� �ݾ�"></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td colspan="2"><input type="submit" id="payment" value="�����ϱ�"  ></td>
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

</body>
</html>