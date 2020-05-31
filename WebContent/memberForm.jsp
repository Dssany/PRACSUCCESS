<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<hr>
<form action="joinchk.jsp">
<div align="center">
	<table border="1">
		<caption><font size="15">회원 가입</font></caption>
		<tr>
			<th>아이디</th>
			<th><input type="text" name="id"></th> 
		</tr>
		<tr>
			<th>비밀번호</th>
			<th><input type="text" name="pw"></th> 
		</tr>
		<tr>
			<th>이름</th>
			<th><input type="text" name="name"></th> 
		</tr>
		<tr>
			<th>부서</th>
			<th><input type="text" name="part"></th> 
		</tr>
		<tr>
			<th>직급</th>
			<th><input type="text" name="rank"></th> 
		</tr>
		<tr>
			<td colspan="5" align="center">
				<input type="submit" value="가입완료">
			</td>
		</tr>
	</table>
	
</div>
</form>
</body>
</html>