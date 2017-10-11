
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Context initCtx = new InitialContext();
	Context envCtx = (Context) initCtx.lookup("java:comp/env");
	DataSource ds = (DataSource) envCtx.lookup("jdbc/myoracle");

	Connection conn = null;
	PreparedStatement pstmt = null;

	// sql 쓸때.  
	//Connection conn = ds.getConnection();
	//System.out.println("conn = " + conn);
	//out.println("conn = " + conn);
	//conn.close();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		/* CREATE TABLE shopmember(
		userid varchar2(20) primary key,
		pwd varchar2(20),
		name varchar2(20),
		phone varchar2(20),
		email varchar2(20),
		logintype number(1)
		) */
		
		request.setCharacterEncoding("UTF-8");
		String sql = "insert into shopmember values(?, ?, ?, ?, ?, ?)";

		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String logintype = request.getParameter("logintype");

		try {
			conn = ds.getConnection();
			System.out.println("conn = " + conn);
			//(3 단계) Statement 객체 생성하기
			pstmt = conn.prepareStatement(sql);
			//(4 단계) 바인딩 변수를 채운다.
			pstmt.setString(1, userid);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, phone);
			pstmt.setString(5, email);
			pstmt.setInt(6, Integer.parseInt(logintype));
			//(5단계) SQL문을 실행하여 결과 처리
			pstmt.executeUpdate(); 
			
		} catch (Exception e) { 
			e.printStackTrace();
		} finally {
			//(6단계) 사용한 리소스 해제
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} //finally의 끝
	%>

	<jsp:forward page="index.jsp" />
</body>
</html>