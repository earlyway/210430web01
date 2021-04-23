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
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521/xe";
String id="hr";
String pwd="hr";
Connection conn=null;
PreparedStatement pstmt=null;
try{
	conn=DriverManager.getConnection(url,id,pwd);
	String sql = "insert into bankk(accountnumb,bankname,userid,fee)"
			+"values(?,?,?,?)";
	pstmt.setString(1, request.getParameter("accountnumb"));
	pstmt.setString(2, request.getParameter("bankname"));
	pstmt.setString(3, request.getParameter("userid"));
	pstmt.setInt(4, Integer.parseInt(request.getParameter("fee")));
	int rows=pstmt.executeUpdate();
	if(rows>0){
		out.println("저장완료");
	}else{
		out.println("에러발생");
	}
}catch (Exception e) {
	e.printStackTrace();
}finally {
	}
	try {
		if(pstmt != null) pstmt.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	try {
		if(conn !=null) conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
}


%>
</body>
</html>