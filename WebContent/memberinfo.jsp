<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dao" class="member.memberDAO"/>
<%@ include file="header.jsp" %>
	<hr>
<div align="center">
	<table border="1">
		<caption><font size="15">회원 정보</font></caption>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>부서</th>
			<th>직급</th> 
		</tr>
		<c:forEach items="${dao.memberInfo(param.id)}" var="dto">
		<tr>
			<td>${dto.id }</td>
			<td>${dto.pw }</td>
			<td>${dto.name }</td>
			<td>${dto.part }</td>
			<td>${dto.rank }</td>
		</tr>
		</c:forEach>
		
	</table>
</div>	
	
	
	
</body>
</html>