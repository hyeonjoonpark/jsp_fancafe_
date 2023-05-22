<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">

<script type="text/javascript" src="check.js"></script>
<title>팬카페 회원 등록 | 최병준 선생님 팬카페</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section>
<h1>팬카페 회원 등록</h1>

<form method="post" action="i-insert.jsp" name="frm">
	<table border="1">
		<tr>
			<td>학번</td>
			<td><input type="text" name="student_number"></td>
		</tr>

		<tr>
			<td>이름</td>
			<td><input type="text" name="student_name"></td>
		</tr>
		
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email"></td>
		</tr>
		
		<tr>
			<td>팬 등급</td>
			<td>
				<input type="radio" value="M" name="fans_grade">Manager
				<input type="radio" value="V" name="fans_grade">VIP
				<input type="radio" value="N" name="fans_grade">Normal
				<input type="radio" value="F" name="fans_grade">Freshman
			</td>
		</tr>
		
		<tr>
			<td>가입날짜</td>
			<td><input type="text" name="income_date"></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="button" value="등록" onclick="checking()">
				<input type="reset" value="다시쓰기" onclick="return alert('정보를 다시 적습니다')">
			</td>
		</tr>
	</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>