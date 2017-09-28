<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>
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
			<form action="">
				<div class="row pt20">
					<div class="title">이름 <b>*</b></div>
					<div class="form_text">조혁래</div>
				</div>
				<div class="row">
					<div class="title">생년월일 <b>*</b></div>
					<div class="form_text">1992년 07월 12일</div>
				</div>
				<div class="row bdb pb20">
					<div class="title">성별 <b>*</b></div>
					<div class="form_text">남자</div>
				</div>
				<div class="row pt20">
					<div class="title">아이디 <b>*</b></div>
					<div class="form_text">johr</div>
				</div>
				<div class="row">
					<div class="title">비밀번호 <b>*</b></div>
					<div class="form_text">*********</div>
				</div>
				
				<div class="row">
					<div class="title">비밀번호 확인 <b>*</b></div>
					<div class="form_text">*********</div>
				</div>
				<div class="row">
					<div class="title">이메일 <b>*</b></div>
					<input type="text" value="johr"/>
					<span> @ </span>
					<input type="text" value="naver.com"/>
				</div>
				<div class="row">
					<div class="title">휴대폰번호 <b>*</b></div>
					<input class="form_tel" type="text" value="010"/>
					<span> - </span>
					<input class="form_tel" type="text" value="7460"/>
					<span> - </span>
					<input class="form_tel" type="text" value="3737"/>
				</div>
				<div class="row bdb pb20">
					<div class="title">주소</div>
					<input  class="form_add" type="text" value="서울시 관악구 신림동 1665-6 스마트빌 303호"/>
				</div>
				<div class="row bdb hm pt20 pb20">
					<div class="title">eKOLON 멤버십<br>정보 수신 동의</div>
					<p>회원님께 제공되는 공지, 이벤트 소식, 포인트 정보, 행사, 신상품 소개 등의 다양한 정보 안내를 받으시겠습니까?</p>
					<div class="labelWrap">
						<label for="agree_1">
							<input type="checkbox" name="agree1" id="agree_1" />
							이메일 수신동의
						</label>
						<label for="agree_2">
							<input type="checkbox" name="agree1" id="agree_2" />
							SMS 수신 동의
						</label>
					</div>
				</div>
				<div class="row bdb hm pt20 pb20">
					<div class="title">사이트<br>정보 수신 동의</div>
					<div class="labelWrap other_w">
						<label for="agree_4">
							<input type="checkbox" name="agree2" id="agree_4" />
							이메일을 통한 상품 및 이벤트 정보 수신에 동의합니다.
						</label>
					</div>
				</div>
				<div class="row bdb hm pt20 pb20 fava">
					<div class="title">관심브랜드</div>
					<p>선택하신 브랜드의 상품 및 다양한 이벤트 정보를 받으실 수 있습니다.</p>
					<div class="labelWrap">
						<label for="AMANDAGHOST">
							<input type="checkbox" name="agree3" id="AMANDAGHOST" />
							AMANDAGHOST
						</label>
						<label for="supercommaB">
							<input type="checkbox" name="agree3" id="supercommaB" />
							supercommaB
						</label>
						<label for="e-BIZ">
							<input type="checkbox" name="agree3" id="e-BIZ" />
							e-BIZ
						</label>
						<label for="Henry Cotton">
							<input type="checkbox" name="agree3" id="Henry Cotton" />
							Henry Cotton
						</label>
						<label for="CLUBCAMBRIDGE">
							<input type="checkbox" name="agree3" id="CLUBCAMBRIDGE" />
							CLUBCAMBRIDGE
						</label>
						<label for="customellow">
							<input type="checkbox" name="agree3" id="customellow" />
							customellow
						</label>
						<label for="JACKNICKLAUS">
							<input type="checkbox" name="agree3" id="JACKNICKLAUS" />
							JACKNICKLAUS
						</label>
						<label for="ELORD">
							<input type="checkbox" name="agree3" id="ELORD" />
							ELORD
						</label>
						<label for="CAMBRIDGE">
							<input type="checkbox" name="agree3" id="CAMBRIDGE" />
							CAMBRIDGE
						</label>
					</div>
				</div>
				<div class="btn_submitWrap">
					<ul>
						<li>
							<a href="#">취소</a>
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
<%@ include file="footer.jsp"%>
