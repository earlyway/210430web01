<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제작사별 베스트셀러</title>
</head>
<body>
<h5 style="color : green; font-size:40px">베스트셀러 정보</h5>
<%@ page import="java.sql.*" %> <!-- page 지시어 -->
<%
	
String driver="oracle.jdbc.driver.OracleDriver";//오라클 드라이버 클래스
//jdbc:dbms이름@호스트:포트/데이터베이스
String url="jdbc:oracle:thin:@localhost:1521:xe";//연결문자열
String id="hr";
String pwd="hr";

Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;

try {
//Class.forName(driver);//드라이버 로딩(생략가능)
conn=DriverManager.getConnection(url,id,pwd);//오라클 서버에 접속
String sql="select book_id,title, publisher, year, price from books";
pstmt=conn.prepareStatement(sql);
rs=pstmt.executeQuery();
%>
<!-- <a href="이동할 주소">하이퍼 링크텍스트</a> -->
<table border="1">
	<tr> 	<!-- table row테이블의 행 -->
		<td>도서코드</td><!-- table divsion 테이블의 열 -->
		<td>제목</td>
		<td>제작사</td>
		<td>출시연도</td>
		<td>가격</td>
		</tr>
<%
while(rs.next()) {//1개의 레코드를 읽음, 내용이 있으면 true, 없으면 false
int book_id=rs.getInt("book_id");//get자료형(필드명)
String title=rs.getString("title");
String publisher=rs.getString("publisher");
String year=rs.getString("year");
int price=rs.getInt("price");
%>
	<tr>
		<td><%=book_id%></td>
		<td><%=title%></td>
		<td><%=publisher%></td>
		<td><%=year%></td>
		<td><%=price%></td>
	</tr>
<%
}
} catch (Exception e) {
e.printStackTrace();
}finally {
try {
if(rs!=null) rs.close();//참조변수가 'rs가 가리키는 내용'이 null이 아니면 close()
} catch (Exception e) {
e.printStackTrace();
}
try {
if(pstmt!=null) pstmt.close();
} catch (Exception e) {
e.printStackTrace();
}
try {
if(conn!=null) conn.close();
} catch (Exception e) {
e.printStackTrace();
}
}
%>
</table>
</body>
</html>