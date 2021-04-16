   <!-- page directive 페이지 지시어
   페이지에 대한 정보 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //자바코드 영역, scriptlet 스크립틀릿
//out 웹브라우저에 내용을 출력하는 객체
for(int i=6; i>=1; i--){
out.println("<h"+i+">문자열 테스트</h"+i+">");
}
%>

</body>
</html>