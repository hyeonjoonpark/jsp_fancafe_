<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>팬 조회 | 최병준 선생님 팬카페</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
		
	<section>
		<h1>팬 조회</h1>
		<table border="1">
			<tr>
				<td>학번</td>
				<td>이름</td>
				<td>이메일</td>
				<td>등급</td>
				<td>가입일자</td>
				<td>팬카페 탈퇴</td>
			</tr>
		<%
			try{
				Class.forName("oracle.jdbc.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","1234");
				String sql = "select * from fans_info";
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery(sql);
				while(rs.next()){
			%>
			<tr>
				<td><%=rs.getString("student_number") %></td>
				<td><%=rs.getString("student_name") %></td>
				<td><%=rs.getString("email")%></td>
				<td><%=rs.getString("fans_grade") %></td>
				<td><%=rs.getString("income_date") %></td>
				<td><a href="fan-delete.jsp?student_number=<%=rs.getString(1) %>"> [ 회원탈퇴하기 ] </a></td>
			</tr>
		<%
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		%>
		</table>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>