<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{width:800px;}
</style>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dao" class="member.memberDAO"/>
<%@ include file="header.jsp" %>
	<hr>
	
<div align="center">
	<table border="1">
		<caption><font size="15">회원 리스트</font></caption>
		<tr>
			<th>이름</th>
			<th>부서</th>
			<th>직급</th> 
		</tr>
		<c:forEach items="${dao.memberView() }" var="dto">
		<tr>
			<td><a href="memberinfochk.jsp?name=${dto.name }">${dto.name }</a></td>
			<td>${dto.part }</td>
			<td>${dto.rank }</td>
		</tr>
		</c:forEach>
		
	</table>
</div>
</body>
</html>