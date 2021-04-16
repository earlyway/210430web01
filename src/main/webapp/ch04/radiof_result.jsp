<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!-- 21.04.16 pm15:30 -->
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%//자바 코드 영역!!
 //request.getParameter("태그의 name")
String gender=request.getParameter("gender");
String result=gender.equals("male")? "남성":"여성";
%>
성별:<%=result%>

</body>
</html>