<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>

<div class="wrapper">

<!-- top 메뉴바 -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>

<div class="sign_popup">
	<h2>SIGN</h2>
	<form action="join.do" method="post" name="frm" onsubmit="return joinCheck()">
		<div class="row">
			<input type="text" name="userid" size="20"  id="login_id" placeholder="아이디">* 
			<input type="hidden" name="reid" size="20"> 
			<input type="button" value="중복 체크" onclick="idCheck()">
		</div>
		<div class="row">
			<input type="password" name="pwd" value="" id="login_pass" placeholder="비밀번호">
		</div>
		<div class="row">
			<input type="password" name="pwd_check" value="" id="login_pass2" placeholder="비밀번호확인">
		</div>
		<div class="row">
			<input type="text" name="name" value="" id="login_name" placeholder="이름">
		</div>
		<div class="row">
			<input type="text" name="phone" value="" id="login_phone" placeholder="휴대폰 번호">
		</div>
		<div class="row">
			<input type="text" name="email" value="" id="login_email" placeholder="이메일">
		</div>
		<div>
			<input type="radio" name="logintype" value="0" checked="checked"> 일반회원 
			<input type="radio" name="logintype" value="1"> 관리자
		</div>
		<div class="row">
			<input type="submit" name="" value="회원가입">
			<button type="button" onclick="location.href='index.jsp' ">취소</button>
			
			<!-- <a href="index.jsp">취소</a> -->
			<!-- <input type="reset" name="" value="취소"> -->
		</div>
	</form>
	<div class="close">X</div>
</div>
</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>
