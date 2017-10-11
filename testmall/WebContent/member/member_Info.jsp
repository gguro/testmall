<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>
<div class="wrapper">

<!-- top 메뉴바 -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>
<!-- 예시 테이블 생성 -->
<!-- CREATE TABLE member_all_select (
    name        VARCHAR2(20),
    bir         VARCHAR2(20),
    gender      VARCHAR2(20),
    userid      VARCHAR2(20),
    pwd         VARCHAR2(20),
    email       VARCHAR2(20),
    phone       VARCHAR2(20),
    addr        VARCHAR2(20),
    ck_recive   VARCHAR2(20),
    interest    VARCHAR2(20)
); -->

<!-- test insert  -->
<!-- INSERT INTO member_all_select VALUES (
    'test',
    '0000-00-00',
    'man',
    'admin',
    'admin',
    'admin@test.com',
    '010-0000-0000',
    'earth',
    'mail recive',
    'test'
);

INSERT INTO member_all_select VALUES (
    'test3',
    '0000-00-00',
    'women',
    'admin1',
    'admin1',
    'admin1@test.com',
    '010-0000-0001',
    'earth',
    'mail recive',
    'test'
); -->
<%!//선언부
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	
	/* uid, pass 입력 필요 */
	String uid = "system";
	String pass = "oracle";
	
	/* db 테이블명 입력 필요 */
	String sql = "select * from shopmember";%>  
	
<div class="container my_info">
	
	<div class="con2">
		<div class="con_header">
			<h2>회원 조회</h2>
			<br>
			<hr>
		
			<table width='800' border='1'>
		<tr>
		<!-- 조회 할 내용 -->
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>휴대폰</th>
			<th>이메일</th>
			
		
			
		</tr>
		<%
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(url, uid, pass);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
	

					/* row명 변경 필요 */
					out.println("<tr>");
					out.println("<td>" + rs.getString("userid") + "</td>");
					out.println("<td>" + rs.getString("pwd") + "</td>");
					out.println("<td>" + rs.getString("name") + "</td>");
					out.println("<td>" + rs.getString("phone") + "</td>");
					out.println("<td>" + rs.getString("email") + "</td>");
					
					
					out.println("</tr>");
				} // while 끝
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					// close: 자원 해제(시스템이 자원 회수)
					if (rs != null)
						rs.close();
					if (stmt != null)
						stmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			} // finally 끝
			
		%>
	</table>
	</div>
</div>
</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>
