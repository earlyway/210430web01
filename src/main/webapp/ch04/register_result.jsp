<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String nnaammee=request.getParameter("name");%>
<%=nnaammee%> 님의 회원가입 처리가 완료되었습니다.<br><br>

<%
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String phone1=request.getParameter("phone1");
String phone2=request.getParameter("phone2");
String email=request.getParameter("email");
String address=request.getParameter("address");
%>
id : <%=id%><br>
이름 : <%=name%><br>
핸드폰 : <%=phone%> - <%=phone1%> - <%=phone2%><br>
이메일 : <%=email%>@<%=address%>
</body>
</html>