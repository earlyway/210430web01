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

String cname=request.getParameter("cname");
String level=request.getParameter("level");
int basic=Integer.valueOf(request.getParameter("basic"));
int bonus=Integer.valueOf(request.getParameter("bonus"));
int total=basic*12+bonus;
int tax=(int)(total*0.03);
int money=total-tax;


//String name=request.getParameter("");
//out.println("cname");
//out.println("level");
//out.println("basic");
//out.println("bonus");
%>
이름 : <%=cname%><br>
직급 : <%=level%><br>
기본급(단위 : 만원) : <%=String.format("%,d",basic)%><br>
보너스(단위 : 만원) : <%=String.format("%,d",bonus)%><br>
총액(단위 : 만원) : <%=String.format("%,d",total)%><br>
세액(단위 : 만원) : <%=String.format("%,d",tax)%><br>
실수령액(단위 : 만원) : <%=String.format("%,d",money)%><br>
</body>
</html>