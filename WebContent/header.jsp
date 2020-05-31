<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.label{height:30px;text-align:right;position:absolute;top:0px;right:100px;}
	.wrap{text-align:center;width:100%;height:100px;position:relative;}
	.headerLogo{color:brown;font-family:'나눔명조 ExtraBold';font-size:70px;}
</style>



</head>
<body>
	
	<div class="wrap"><b class="headerLogo">CARE LAB</b>
	

	<div class="label">
	
	<label><a href="index.jsp">HOME</a></label>
	<%if(session.getAttribute("id")!=null) {%>
	<label><a href="memberinfo.jsp?id=${sessionScope.id }">회원정보</a></label>
	<label><a href="memberlist.jsp">회원목록</a></label>
	<%}else{ %>
	
	<label><a href="errorpage.jsp">회원정보</a></label>
	<label><a href="errorpage.jsp">회원목록</a></label>
	<%} %>
	</div>
	
	</div>
	
	


</body>
</html>