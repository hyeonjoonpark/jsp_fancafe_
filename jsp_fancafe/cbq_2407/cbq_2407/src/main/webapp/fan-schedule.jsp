<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<script src="check.js"></script>
<title>일정조회 | 최병준 선생님 팬카페</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
		
	<section>
		<h1>스케줄 조회</h1>
		<form name="frm">
		<table border="1">
			<tr>
				<td>스케줄 번호</td>
				<td>제목</td>
				<td>장소</td>
				<td>시간</td>
				<td>현재 신청인원</td>
				<td>신청하기</td>
			</tr>
		<%
			try{
				Integer cnt = 0;
				Class.forName("oracle.jdbc.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","1234");
				String sql = "select * from fans_schedule";
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery(sql);
				while(rs.next()){
					cnt = rs.getInt("fans_count"); 
			%>
			<tr>
				<td><%=rs.getString("schedule_id") %></td>
				<td><%=rs.getString("title") %></td>
				<td><%=rs.getString("place")%></td>
				<td><%=rs.getString("time") %></td>
				<td><input type="text" value="<%=cnt %>" name="cnt"></td>
				<td><input type="button" value="신청하기" onclick="counting(parseInt(cnt.value))"></td>
			</tr>
		<%
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		%>
		</table>
		</form>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>