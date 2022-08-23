<%@ page import="DB.DBConnect"%> <%-- DB파일 안에 DBConnect을 가지고온다--%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String sql = "insert into MEMBER_TBL values (?, ?, ?, ?, ?, ?, ?)";
	
	Connection conn = DBConnect.getConnection(); //DBConnect파일 안에 getConnection메소드를 Connection형식의 conn변수에 넣는다.
	PreparedStatement pstmt = conn.prepareStatement(sql); 
	//PreparedStatement형 변수 pstmt을 이용해 conn 변수를 sql 변수를 jQuery로 변환하는 역할을 한다.
	
	pstmt.setInt(1, Integer.parseInt(request.getParameter("custno"))); //custno의 형식이 number라 형변환해서 해야한다.
	pstmt.setString(2, request.getParameter("custname")); //SQL 변수에 있는? 을 채워 넣는 작업
	pstmt.setString(3, request.getParameter("phone")); //SQL 변수에 있는? 을 채워 넣는 작업
	pstmt.setString(4, request.getParameter("address")); //SQL 변수에 있는? 을 채워 넣는 작업
	pstmt.setString(5, request.getParameter("joindate")); //SQL 변수에 있는? 을 채워 넣는 작업
	pstmt.setString(6, request.getParameter("grade")); //SQL 변수에 있는? 을 채워 넣는 작업
	pstmt.setString(7, request.getParameter("city")); //SQL 변수에 있는? 을 채워 넣는 작업
	
	pstmt.executeUpdate();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쇼핑몰회원관리</title>
</head>
<body>
	<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>