<%@ page import="java.sql.Timestamp" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="community.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
   PostDBBean db=PostDBBean.getInstance();
   ArrayList<PostBean> PostList = db.listpost();
   
   String name,email,title, content,password,upload_file;
   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
   int no=0;
   Timestamp date;
   
%>
<html>
   <head>
      <title>
      </title>
   </head>
   <body>
      <center>
         <h1>�� ��(POST)</h1>
      </center>
      <table width="600">
         <tr>
            <td align="right">
               <a href="post_write.jsp" align="right" >�� �� ��</a>
            </td>
         </tr>
      </table>
      <table width="800" border="1">
         <tr height="25">
            <td width="40" align="center">��ȣ
            </td>
            <td width="450" align="center">������
            </td>
            <td width="120" align="center">�ۼ���
            </td>
         </tr>
         <%
            for(int i=0; i<PostList.size(); i++){
               PostBean post = PostList.get(i);
               
               no = post.getNo();
               name = post.getName();
               email = post.getEmail();
               title = post.getTitle();
               content = post.getContent();
               password = post.getPassword();
               upload_file = post.getUpload_file();
               date = post.getDate();
               
         %>
            <tr height="25" bgcolor="#f7f7f7"
               onmouseover="this.style.backgroundColor='#eeeeef'"
               onmouseout="this.style.backgroundColor='#f7f7f7'">
               
            <td align="center">
                  <%= name %>
               </td>
               <td><a href="post_show.jsp?name<%=name%>">
                  <%= title %>
                  </a>
               </td>
               <td align="center">
                  <a href="mailto:<%=email %>">
                     <%=name%>
                  </a>
                  </td>
                  <td align="center">
                  <%= sdf.format(date)%>
               </td>
            </tr>
         <%
            }
         %>
      </table>
   </body>
</html>