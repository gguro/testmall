<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="sign_popup popup">
	<h2>SIGN</h2>
	<form action="add_member.jsp" method="post">
		<div class="row">
			<input type="text" name="userid" value="" id="login_id" placeholder="아이디">
		</div>
		<div class="row">
			<input type="text" name="pwd" value="" id="login_pass" placeholder="비밀번호">
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
			<input type="reset" name="" value="취소">
		</div>
	</form>
	<div class="close">X</div>
</div>