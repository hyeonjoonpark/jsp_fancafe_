<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="check.js"></script>
<link rel="stylesheet" href="style.css">
<title>일정 등록 | 최병준 선생님 팬카페</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section>
	<h1>팬미팅 일정 등록</h1>
	<form method="post" action="s_i-action.jsp" name="frm2">
	<table border="1">
	
		<tr>
			<td>팬미팅 번호</td>
			<td><input type="text" name="schedule_id"></td>
		</tr>
		
		<tr>
			<td>팬미팅 제목</td>
			<td><input type="text" name="title"></td>
		</tr>

		<tr>
			<td>팬미팅 내용</td>
			<td><input type="text" name="detail"></td>
		</tr>
		
		<tr>
			<td>개최장소</td>
			<td><input type="text" name="place"></td>
		</tr>
		
		<tr>
			<td>개최날짜</td>
			<td><input type="text" name="time"></td>
		</tr>
		
		<tr>
			<td>방송사 코드</td>
			<td><input type="text" name="media_id"></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="button" value="등록" onclick="uploading()">
				<input type="reset" value="다시쓰기" onclick="alert('다시 입력합니다')">
			</td>
		</tr>
	</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>