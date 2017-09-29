<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${empty loginUser}">
	<jsp:forward page='login.do' />
</c:if>

<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>
<div class="wrapper">

<!-- top 메뉴바 -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>

<div class="container my_info">
	<div class="con1">
		<p class="title"><b>KOLON ONE ID</b> 회원정보 변경안내</p>
		<p class="des">
			소중한 고객님의 정보는 이용중이신 코오롱의 모든 패밀리사이트와 함께 적용됩니다.
		</p>
	</div>
	<div class="con2">
		<div class="con_header">
			<h2>회원정보 수정</h2>
			<div class="btn_out">회원탈퇴</div>
		</div>
		<div class="con_form">
			<form method="post" action="memberUpdate.do">
				<div class="row pt20">
					<div class="title">이름 <b>*</b></div>
					<div class="form_text">${loginUser.name}</div>
				</div>
				<div class="row pt20">
					<div class="title">아이디 <b>*</b></div>
					<div class="form_text">${loginUser.userid}</div>
					<input type="hidden" name="userid" value="${loginUser.userid}">
				</div>
				<div class="row">
					<div class="title">비밀번호 <b>*</b></div>
					<input type="password" name="pwd" value="${loginUser.pwd}">
				</div>
				<div class="row">
					<div class="title">비밀번호 확인 <b>*</b></div>
					<input type="password" value="${loginUser.pwd}">
				</div>
				<div class="row">
					<div class="title">휴대폰번호 <b>*</b></div>
					<input type="text" name="phone" value="${loginUser.phone}">
					
				</div>
				<div class="row">
					<div class="title">이메일 <b>*</b></div>
					<input type="text" name="email" value="${loginUser.email}"/>
				</div>
				
<!-- 				<div class="row bdb pb20">
					<div class="title">주소</div>
					<input  class="form_add" type="text" value="서울시 관악구 신림동 1665-6 스마트빌 303호"/>
				</div> -->
				
				
				<div class="btn_submitWrap">
					<ul>
						<li>
							<a href="index.html">취소</a>
						</li>
						<li>
							<input type="submit" value="확인"/>
						</li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>
