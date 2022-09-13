<%@ page import="DB.DBConnect"%> <%-- DB파일 안에 DBConnect을 가지고온다--%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String sql = "insert into MEMBER_TBL values (?, ?, ?, ?, ?, ?, ?)";
	
	Connection conn = DBConnect.getConnection(); //DB와 연결해주는 역할입니다.
	PreparedStatement pstmt = conn.prepareStatement(sql); 
	//PreparedStatement를 이용해 String형식의 sql문을 DB형식으로 변경해 pstmt변수에 저장합니다.
	
	pstmt.setInt(1, Integer.parseInt(request.getParameter("custno"))); //custno의 형식이 number라 형변환해서 해야합니다.
	pstmt.setString(2, request.getParameter("custname")); //sql변수에 pstmt에서 가져온 데이터을 넣는 작업입니다.
	pstmt.setString(3, request.getParameter("phone")); //sql변수에 pstmt에서 가져온 데이터을 넣는 작업입니다.
	pstmt.setString(4, request.getParameter("address")); //sql변수에 pstmt에서 가져온 데이터을 넣는 작업입니다.
	pstmt.setString(5, request.getParameter("joindate")); //sql변수에 pstmt에서 가져온 데이터을 넣는 작업입니다.
	pstmt.setString(6, request.getParameter("grade")); //sql변수에 pstmt에서 가져온 데이터을 넣는 작업입니다.
	pstmt.setString(7, request.getParameter("city")); //sql변수에 pstmt에서 가져온 데이터을 넣는 작업입니다.
	
	pstmt.executeUpdate();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Tr
ansitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쇼핑몰회원관리</title>
</head>
<body>
	<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>