<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn=null; 
		try{
			String url="jdbc:mysql://localhost:3306/mydb";
			String user="root";
			String password="1234";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, password);
			out.print("����Ÿ���̽� ���ῡ �����Ͽ����ϴ�.<br>");
		}catch(SQLException ex){
			out.print("�����ͺ��̽� ������ �����߽��ϴ�.<br>");
			out.print("SQLException: "+ex.getMessage());
		}finally{
			if(conn!=null){
				conn.close();
			}
		}
	%>

</body>
</html>