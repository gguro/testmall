<%-- 로그인 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>

<div class="wrapper">

<!-- top 메뉴바 -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>

<div class="login_popup">
	<h2>LOGIN</h2>
      <form class="" action="login.do" method="post" onsubmit="return loginCheck()">
		<div class="row">
			<input type="text" name="userid" value="" id="login_id" placeholder="아이디">
		</div>
		<div class="row">
			<input type="text" name="pwd" value="" id="login_pass" placeholder="비밀번호">
		</div>
		<div class="row">
			<input type="submit" name="" value="로그인">
		</div>
	</form>
	<div class="find_row">
		<a class="forgetId_open" href="forgetid.do">아이디 찾기</a> 
		<a class="forgetPw_open" href="forgetpwd.do">비밀번호 찾기</a> 
		<a class="sign_open" href="join.do">회원가입</a>
	</div>
	<div class="close">X</div>
</div>
</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>
