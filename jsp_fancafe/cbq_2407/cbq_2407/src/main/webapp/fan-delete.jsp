<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fan-delete.jsp</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String student_number = request.getParameter("student_number");
try {
Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
String sql = "delete from fans_info where student_number = ?";
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, student_number);
pstmt.executeUpdate();
} catch (Exception e) {
	e.printStackTrace();
}
%>
<jsp:forward page="fan-list.jsp"></jsp:forward>
</body>
</html>