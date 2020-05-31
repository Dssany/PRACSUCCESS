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

<c:choose>
		<c:when test="${param.name eq sessionScope.name }">
			<script type="text/javascript">
				
				alert("동일한 사용자입니다!")
				
			</script>
			<c:redirect url="memberinfo.jsp?id=${sessionScope.id }"/>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
			
				alert("사용자에게 열람할 권한이 없습니다!")
				location.href="memberlist.jsp"
			</script>
		</c:otherwise>
		</c:choose>
</body>
</html>