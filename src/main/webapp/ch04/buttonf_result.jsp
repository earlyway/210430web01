<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><!-- 21.04.16 pm16 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//Integer.valueOf(스트링) 스트링을 숫자로 변환. valueof 대신 parseint도 가능.
int price=Integer.valueOf(request.getParameter("price"));
int amount=Integer.valueOf(request.getParameter("amount"));
int money=price*amount;
%>
가격 : <%=price%><br>
수량 : <%=amount%><br>
금액 : <%=money%>
</body>
</html>