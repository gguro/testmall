<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 인클루드 -->
<c:import url="/testmall/include/header.jsp" charEncoding="UTF-8"></c:import>

<div class="wrapper">

<!-- top 메뉴바 -->
<c:import url="/testmall/include/topMenu.jsp" charEncoding="UTF-8"></c:import>

<div class="forgetid_popup">
	<h2>아이디 찾기</h2>
	<form action="forgetid.do" method="get" name="frm"> email 
		<input type="text" name="email" value="${email}"> 
		<input type="submit" value="ID 찾기"> <br>

		<!-- out.println("<script>alert('idCheck.jsp');</script>"); -->

		<c:if test="${result ==1}">
			${email}에 해당하는 id는 ${userid} 입니다.
			<script type="text/javascript">
				opener.document.frm.userid.vaule = ${userid};
			</script>
			<input type="button" name="" value="사용" onclick="idok('${userid}')">
		</c:if>
		<c:if test="${result == -1}">
			<script type="text/javascript">
				alert("입력하신 email에 해당하는 id를 찾을 수 없습니다.")
			</script>
				
		</c:if>


	</form>
	
	<div class="close">X</div>
</div>
</div>

<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>

