<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Room.*" %>
<%@ page import="java.util.ArrayList" %>     
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>�Խ��� ����</title>
    <link rel="stylesheet" href="../../bootstrap/bootstrap.min.css" />
    <style>
 .table{
 	width:800px;
 }
 .btn{
 	position:relative;
 	left:35%;
 	top:40px;
 }
 .text{
 	position:relative;
 	left:15%;
 	top:40px;
 }
 th, td{
 	text-align:center;
 }
</style>
  </head>
  <body>
 <%
	RoomDBBean rdb = RoomDBBean.getinstance();
	ArrayList<RoomBean> roombean = rdb.getAll();
%>
<table class="table table-borderless" align="center">
<tr>
<th class="text text-secondary">*���� �����Ͽ� ������� �Խ����� ������ Ȯ���ϰ� ������ �� �ִ� ������ �Դϴ�.*</th>
</tr>
<tr><td><td></td></tr>
</table>

    <table class="table table-hover" align="center">
      <form name="board" method="post">
      <thead class="thead-dark">
        <tr class="table table-hover" align="center">
          <th scope="col">�Խ��� Ÿ��Ʋ</td>
          <th scope="col">�Խù�</td>
          <th scope="col">�������</td>
        </tr>
        </thead>
      <tbody>      
        <tr align="center" height="28">
          <td>��������</td>
          <td><%/*bbs�� �ڷ᰹��*/%></td>
          <td>
            <input
              type="button"
              value=" �Խù� ���� "
              onClick="void(window.open('../../community/post_list.jsp', 'mpl', 'width=1200,height=500,resizable=yes'))"
            />
            <input
              type="button"
              value=" ��� "
              onClick="location.href='/admin/component/menu.php?component=board&file=bbs_backup&board_code=1'"
            />
          </td>
        </tr>
        <tr align="center" height="28">
          <td>Q&A</td>
          <td><%/*Q&A�� �ڷ᰹��*/%></td>
          <td>
            <input
              type="button"
              value=" �Խù� ���� "
              onClick="void(window.open('../../community/qna_list.jsp', 'mpl','width=1200,height=500,resizable=yes'))"
            />
            <input
              type="button"
              value=" ��� "
              onClick="location.href='/admin/component/menu.php?component=board&file=bbs_backup&board_code=1'"
            />
          </td>
        </tr>
        <tr align="center" height="28">
          <td>�����ı�</td>
          <td><%/*post�� �ڷ᰹��*/%></td>
          <td>
            <input
              type="button"
              value=" �Խù� ���� "
              onClick="void(window.open('../../community/post_list.jsp', 'mpl', 'width=1200,height=500,resizable=yes'))"
            />
            <input
              type="button"
              value=" ��� "
              onClick="location.href='/admin/component/menu.php?component=board&file=bbs_backup&board_code=1'"
            />
          </td>
        </tr>
      </form>
    </table>
  </body>
</html>
