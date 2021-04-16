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
//Integer.valueOf(스트링) 스트링을 숫자로 변환. valueof 대신 parseint도 가능.
int dann=Integer.valueOf(request.getParameter("dan"));
//int result=dan * 2; ss : <%=result
for(int i=1; i<10; i++){
	out.println(dann+"x"+i+"="+dann*i+"<br>");
}
%><br>
<%=dann%> 단 입니다.
</body>
</html>