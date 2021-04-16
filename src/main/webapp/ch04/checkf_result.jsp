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
//request.getParameter("변수명")
//request.getParameterValues("배열변수명")
String[] fruits=request.getParameterValues("fruits");
//확장 for문
if(fruits != null){
	for(String str:fruits){//개별값 : 배열
		out.println(str+"<br>");
	}
} else{
	out.println("선택한 내용이 없습니다.");
}
%>

</body>
</html>