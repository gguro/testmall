<%-- 로그인 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>
<div class="wrapper">

<!-- top 메뉴바 -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>


<div class="idcheck_popup">
	<h2>아이디 중복확인</h2>
	<form action="idCheck.do" method="get" name="frm"> 아이디 
		<input type="text" name="userid" value="${userid}"> 
		<input type="submit" value="중복 체크"> <br>

		<c:if test="${result ==1}">
			<script type="text/javascript">
				opener.document.frm.userid.vaule = "";
			</script>
			${userid}는 이미 사용 중인 아이디 입니다.
		</c:if>
		<c:if test="${result == -1}">
			${userid}는 사용 가능한 아이디입니다.
			<input type="button" value="사용" class="cancel"
				onclick="idok('${userid}')">
		</c:if>


	</form>
</div>

</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>
