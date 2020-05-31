<%@page import="member.memberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>loginChk.jsp<br>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:requestEncoding value="utf-8"/>
	<jsp:useBean id="dao" class="member.memberDAO"/>
	
	
	<c:set var="chkresult" value="${dao.loginchk(param.id,param.pw) }"/>
	<c:choose>
		<c:when test="${chkresult eq 1 }">
		
		
			<%
			memberDAO mem = new memberDAO();
			
			session.setAttribute("id", mem.memberInfo(request.getParameter("id")).get(0).getId());
			session.setAttribute("pw", mem.memberInfo(request.getParameter("id")).get(0).getPw());
			session.setAttribute("name",mem.memberInfo(request.getParameter("id")).get(0).getName());
			session.setAttribute("part", mem.memberInfo(request.getParameter("id")).get(0).getPart());
			session.setAttribute("rank", mem.memberInfo(request.getParameter("id")).get(0).getRank());
			
			%>
		
		
			<script type="text/javascript">
				alert("로그인성공입니다!")
				location.href="index.jsp"
			</script>
			
		</c:when>
		<c:when test="${chkresult eq 2 }">
			<script type="text/javascript">
				alert("비밀번호 오류입니다. 재입력바랍니다")
				location.href="index.jsp"
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("존재하지 않는 아이디입니다")
				location.href="index.jsp"
			</script>
		</c:otherwise>
	</c:choose>
	
	
	<button type="button" onclick="history.back()">이전</button>

</body>
</html>