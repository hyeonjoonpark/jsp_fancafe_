<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
try {
String student_number = request.getParameter("student_number");
String student_name = request.getParameter("student_name");
String email = request.getParameter("email");
String fans_grade = request.getParameter("fans_grade");
String income_date = request.getParameter("income_date");
Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
String sql = String.format("insert into fans_info values('%s', '%s', '%s', '%s', '%s')", student_number, student_name, email, fans_grade, income_date);
Statement stmt = conn.createStatement();
stmt.executeUpdate(sql);
conn.close();
stmt.close();
} catch (Exception e) {
	e.printStackTrace();
}
%>
<jsp:forward page="fan-list.jsp"></jsp:forward>
</body>
</html>