<%@ page import="DB.DBConnect"%> <%-- DB파일 안에 DBConnect을 가지고온다--%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sql="select max(custno) from member_tbl";//데이터 베이스 member_tbl안에 있는 custno의 최대 값을 문자열 형식의 sql변수에 넣는다.

	Connection conn = DBConnect.getConnection(); //DBConnect파일 안에 getConnection메소드를 Connection형식의 conn변수에 넣는다.
	PreparedStatement pstmt = conn.prepareStatement(sql); 
	//PreparedStatement형 변수 pstmt을 이용해 conn 변수를 sql 변수를 구문을 jQuery로 변환하는 역할을 한다.
	ResultSet rs = pstmt.executeQuery(); //ResultSet형식 변수 rs에 pstmt을 저장시킨다.
	
	rs.next();
	int num = rs.getInt(1)+1;
	//rs.next()를 호출하고 num변수에 custno의 최대 값+1을 저장시킨다.
%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>join</title>

<script type="text/javascript">
	function checkValue() {
		if(!document.data.custname.value)//만약 값의 value가 없으면 {
			alert("회원성명을 입력하세요."); //alert 함수와
			data.custname.focus(); //focus을 활성화하고
			return false; //false을 리턴한다.
		} 
		else if(!document.data.phone.value) {
			alert("전화번호를 입력하세요.");
			data.phone.focus();
			return false;
		} 
		else if (!document.data.address.value) {
			alert("주소를 입력하세요.");
			data.address.focus();
			return false;
		} 
		else if (!document.data.joindate.value) {
			alert("가입일자를 입력하세요.");
			data.joindate.focus();
			return false;
		} 
		else if (!document.data.grade.value) {
			alert("고객등급을 입력하세요.");
			data.grade.focus();
			return false;
		}  
		else if (!document.data.city.value) {
			alert("도시코드를 입력하세요.");
			data.city.focus();
			return false;
		}
		return true; //만약 다 채워져 있으면 true을 리턴한다.
	}
</script>

</head>
<body>
<header>
	  <jsp:include page="layout/header.jsp"></jsp:include>
 </header>

 <nav>
   	 <jsp:include page="layout/nav.jsp"></jsp:include>
 </nav>
		
 <section class="section">
   	 <h2>홈쇼핑 회원 등록</h2><br>

<form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">
			<table class="table_line">
				<tr>
					<th>회원번호(자동발생)</th>
					<td><input type="text" name="custno" value="<%= num %>" readonly></td>
				</tr>
				<tr>
					<th>회원성명</th>
					<td><input type="text" name="custname" ></td>
				</tr>
				<tr>
					<th>회원전화</th>
					<td><input type="text" name="phone" ></td>
				</tr>
				<tr>
					<th>회원주소</th>
					<td><input type="text" name="address" ></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input type="text" name="joindate" ></td>
				</tr>
				<tr>
					<th>고객등급[A:VIP,B:일반,C:직원]</th>
					<td><input type="text" name="grade" ></td>
				</tr>
				<tr>
					<th>도시코드</th>
					<td><input type="text" name="city" ></td>
				</tr>
				<tr class="center">
					<td  colspan="2" >
						<input type="submit" value="등록">
						<input type="button" value="취소" onclick="location.href='join.jsp'">
						<input type="button" value="조회" onclick="location.href='member_list.jsp'">
				</tr>
			</table>
		</form>	
   	
 </section>
		
<footer>
	<jsp:include page="layout/footer.jsp"></jsp:include>
</footer>

</body>
</html>
