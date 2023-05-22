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
	String schedule_id = request.getParameter("schedule_id");
	String title = request.getParameter("title");
	String detail = request.getParameter("detail");
	String place = request.getParameter("place");
	String time_s = request.getParameter("time");
	Integer fans_count = 0;
	String media_id = request.getParameter("media_id");
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
	String sql = "insert into fans_schedule values(?, ?, ?, ?, ?, ?, ?)";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, schedule_id);
	ps.setString(2, title);
	ps.setString(3, detail);
	ps.setString(4, place);
	ps.setString(5, time_s);
	ps.setInt(6, fans_count);
	ps.setString(7, media_id);
	
	ps.executeUpdate();
	
	} catch (Exception e) {
		e.printStackTrace();
}
%>
<jsp:forward page="fan-schedule.jsp"></jsp:forward>
</body>
</html>