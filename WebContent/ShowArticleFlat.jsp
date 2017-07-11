<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ page import = "java.sql.*" %>


<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost/db_bbs?user=root&password=123456";
Connection conn = DriverManager.getConnection(url);

Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from article where pid=0");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
</head>
<body>
<a href= "Post.jsp">发表新帖</a>
<table border = "1">
<%
while(rs.next()){
%>

	<tr>
	   <td>
	   <%=rs.getString("title") %>
	   </td>
	</tr>

<%
}

rs.close();
stmt.close();
conn.close();
%>
</table>
</body>
</html>