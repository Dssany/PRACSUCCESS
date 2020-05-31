<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
	<%@ include file="header.jsp" %>
	<hr>
<div style=height:200px;text-align:center;>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%if(session.getAttribute("id")==null) {%>
	<h1>로그인 페이지입니다</h1>
	<form action="loginChk.jsp" method="post">
		<table align="center">
		<tr>
			<th><input type="text" name="id" placeholder="아이디"><br></th>
			<th  rowspan="2" ><input type="submit" value="로그인" style="height:50px;margin:5px 0 5px 0;"><br></th>
		</tr>
		<tr>
			<th><input type="text" name="pw" placeholder="비밀번호"></th>
		</tr>
		<tr>
			<th align="left"><button type="button" onclick="location='memberForm.jsp'">회원가입</button></th>
		</tr>
		</table>
	</form>
<%}else{ %>
	<h1>메인 페이지입니다</h1>
	<input type="button" value="회원목록" onclick="location.href='memberlist.jsp'">
	<input type="button" onclick="location.href='logout.jsp'" value="로그아웃">
<%} %>
	
	</div>
</body>
</html>