<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="community.*"%>
<%
	String pageNUM = request.getParameter("pageNUM");
	int no = Integer.parseInt(request.getParameter("no"));
	QnaDBBean db = QnaDBBean.getInstance();
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
      <form name="form" method="post" action="qna_request_ok.jsp?no=<%=no%>&pageNUM=<%=pageNUM%>">
         <table>
            <tr height="30">
               <td width="80">
                                   �亯
               </td>
               <td width="200" colspan="3">
						<textarea rows="10" cols="60" name="comment"></textarea>
					</td>
        
            <tr height="50" align="center">
               <td colspan="4" width="480">
                  <input type="submit" value="�Է�"
                  >&nbsp;
                  <input type="reset" value="�ٽ��ۼ�">
                  <input type="button" value="�۸��"
                     onclick="location.href='qna_list.jsp?pageNUM=<%=pageNUM%>'">&nbsp;
               </td>
            </tr>
         </table>
      </form>
   </center>
</body>
</html>
