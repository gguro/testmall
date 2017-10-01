<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="login_popup popup">
	<h2>LOGIN</h2>
	<form class="" action="login.do" method="post">
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
		<a class="forgetId_open" href="idsearch.do">아이디 찾기</a> <a class="forgetPw_open" href="forgetpwd.do">비밀번호 찾기</a> <a class="sign_open" href="">회원가입</a>
	</div>
	<div class="close">X</div>
</div>