
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberBean" class="com.mall.javabeans.MemberBean" scope="request" />

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
admin number(1)
) */


	request.setCharacterEncoding("UTF-8");
	String sql = "select * from shopmember where userid=?";
	
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	
	try {
		conn = ds.getConnection();
		System.out.println("conn = " + conn);
		//(3 단계) Statement 객체 생성하기
		pstmt = conn.prepareStatement(sql);
		
		// userid
		pstmt.setString(1, userid);
		
		//(5단계) SQL문을 실행하여 결과 처리
		ResultSet rs = pstmt.executeQuery();
		
		System.out.println("p.userid = " + userid);
		System.out.println("p.pwd = " + pwd);
		
		while(rs.next())
		{
			String rs_userid = rs.getString("userid");
			String rs_pwd = rs.getString("pwd");
			
			System.out.println("rs.userid = " + rs_userid);
			System.out.println("rs.pwd = " + rs_pwd);
			
			if(rs_pwd.equals(pwd)) {
				System.out.println("Login Success!"); %>
				
				<jsp:setProperty property="*" name="memberBean" />
				<jsp:getProperty property="name" name="memberBean"/>
<%
			} else {
				System.out.println("Login Failed!");
			}
			break;
		}
		
		
		
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
	}//finally의 끝
%>	
	
	


<%-- <jsp:forward page="cart.jsp" /> --%>
</body>
</html>