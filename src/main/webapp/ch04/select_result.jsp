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
String name="";
String cars=request.getParameter("cars");
switch(cars){
case "bmw":
	name="BMW";
	break;
case "benz":
	name="Benz";
	break;
case "hyundai":
	name="현대";
	break;
case "kia":
	name="기아";
	break;

}
%>
선택한차량 : <%=name%>

</body>
</html>