<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String feedback=request.getParameter("feedback");
feedback=feedback.replace("<","&lt;");
feedback=feedback.replace(">","&gt;");
feedback=feedback.replace("\n","<br>");
feedback=feedback.replace("   ","&nbsp;&nbsp;");

%>
고객의견 : <br>
<%=feedback%>
</body>
</html>