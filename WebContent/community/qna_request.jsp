<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="community.*"%>
<%
	QnaDBBean db = QnaDBBean.getInstance();
	int no = Integer.parseInt(request.getParameter("no"));
	QnaBean qna = db.getQna(no);
%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="EUC-KR">
   <title>Insert title here</title>
   <script type="text/javascript" src="function.js" charset="utf-8"></script>
</head>
<body>
   <center>
      <h1>
        	 �� �� �� �� ��
      </h1>
      <form name="form" method="post" action="qna_request_ok.jsp?no=<%=no%>">
         <table>
            <tr height="30">
               <td width="80">
                                   �亯
               </td>
               <td width="140">
                  <input type="text" name="comment" size="20">
               </td>
        
            <tr height="50" align="center">
               <td colspan="4" width="480">
                  <input type="submit" value="�Է�"
                  >&nbsp;
                  <input type="reset" value="�ٽ��ۼ�">
                  <input type="button" value="�۸��"
                     onclick="location.href='qna_list.jsp'">&nbsp;
               </td>
            </tr>
         </table>
      </form>
   </center>
</body>
</html>
