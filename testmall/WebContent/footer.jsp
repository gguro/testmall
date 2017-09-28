<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="footer">
	<div class="link_area">
		<ul>
			<li><a href="">회사소개</a></li>
			<li><a href="">이용약관</a></li>
			<li><a href="">개인정보처림방침</a></li>
			<li><a href="">청소년보호정책</a></li>
			<li><a href="">회원탈퇴</a></li>
			<li><a href="">고객센터</a></li>
			<li><a href="">제휴문의</a></li>
		</ul>
	</div>
	<div class="site_info">
		<div class="logo">
			<a href="">
				<img src="images/logo.gif" alt="" />
			</a>
		</div>
		<div class="info_area">
			주소 (우) 07995 서울특별시 양천구 목동동로 233-1, 501 (목동, 드림타워)<br> 대표이사:손윤환,
			안징현 사업자번호:117-81-40065통신판매업 : 제2004-서울양천-00918호부가통신사업 : 제003081호<br>
			<br> (주)다나와는 상품판매와 직접적인 관련이 없으며, 모든 상거래의 책임은 구매자와 판매자에게 있습니다.<br>
			이에 대해 (주)다나와는 일체의 책임을 지지 않습니다.<br> 본사에 등록된 모든 광고와 저작권 및 법적책임은
			자료제공사 (또는 글쓴이)에게 있으므로 본사는 광고에 대한 책임을 지지 않습니다.
		</div>
	</div>
</div>
<div class="popup_bg"></div>
<%@ include file="login_popup.jsp"%>
<div class="forgetPw_popup popup">
	<h2>FORGET PASSWORD</h2>
	<form class="" action="index.html" method="post">
		<div class="row">
			<input type="text" name="" value="" id="login_id" placeholder="아이디">
		</div>
		<div class="row">
			<input type="text" name="" value="" id="login_name" placeholder="이름">
		</div>
		<div class="row">
			<input type="text" name="" value="" id="login_phone"
				placeholder="휴대폰 번호">
		</div>
		<div class="row">
			<input type="text" name="" value="" id="login_email"
				placeholder="이메일">
		</div>
		<div class="row">
			<input type="submit" name="" value="비밀번호 찾기">
		</div>
	</form>
	<div class="close">X</div>
</div>
<div class="forgetId_popup popup">
	<h2>FORGET ID</h2>
	<form class="" action="index.html" method="post">
		<div class="row">
			<input type="text" name="" value="" id="login_name" placeholder="이름">
		</div>
		<div class="row">
			<input type="text" name="" value="" id="login_phone"
				placeholder="휴대폰 번호">
		</div>
		<div class="row">
			<input type="text" name="" value="" id="login_phone"
				placeholder="이메일">
		</div>
		<div class="row">
			<input type="submit" name="" value="아이디 찾기">
		</div>
	</form>
	<div class="close">X</div>
</div>
<%@ include file="sign_popup.jsp"%>
<script>
	$(function() {
		$(".login_open").click(function() {
			$(".login_popup").addClass("on");
			$(".popup_bg").addClass("on");
			return false;
		})
		$(".forgetPw_open").click(function() {
			$(".forgetPw_popup").addClass("on");
			$(".popup_bg").addClass("on");
			return false;
		})
		$(".forgetId_open").click(function() {
			$(".forgetId_popup").addClass("on");
			$(".popup_bg").addClass("on");
			return false;
		})
		$(".sign_open").click(function() {
			$(".sign_popup").addClass("on");
			$(".popup_bg").addClass("on");
			return false;
		})
		$(".close").click(function() {
			$(".login_popup").removeClass("on");
			$(".forgetPw_popup").removeClass("on");
			$(".forgetId_popup").removeClass("on");
			$(".sign_popup").removeClass("on");
			$(".popup_bg").removeClass("on");
			return false;
		})
	});
</script>
</div>
</body>
</html>