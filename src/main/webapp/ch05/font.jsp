<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <태그 style="속성:값;속성:값">, 태그에 스타일을 직접 지정하는 방법 -->
<%for(int i=1; i<=7; i++){ %>
<%} %>
<% for(int i=1; i<=150; i++){
	String color= i%2 == 0? "red" : "blue";
	%>
	<p style ="font-size:<%=i %>px; color:<%=color %>;">hello</p>
<%} %>
</body>
</html>