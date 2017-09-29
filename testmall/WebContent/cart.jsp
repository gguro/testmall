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

<div class="container cart news">
	<div class="con">
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>상품명</th>
					<th>판매가</th>
					<th>회원할인</th>
					<th>수량</th>
					<th>주문금액</th>
					<th>배송비</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="num">1</td>
					<td class="title"><a href=""> <span class="img_wrap">
								<img src="images/cart/img1.jpg" alt="">
						</span> <span class="t1"> [커버낫] S/S ARCHLOGO T-SHIRTS WHITE (옵션:
								XL) </span>
					</a></td>
					<td class="pay_1">12,500원</td>
					<td class="discount">500원</td>
					<td class="count">1</td>
					<td class="pay_2">12,000원</td>
					<td class="count">무료배송</td>
				</tr>
				<tr>
					<td class="num">2</td>
					<td class="title"><a href=""> <span class="img_wrap">
								<img src="images/cart/img1.jpg" alt="">
						</span> <span class="t1"> [커버낫] S/S ARCHLOGO T-SHIRTS WHITE (옵션:
								XL) </span>
					</a></td>
					<td class="pay_1">12,500원</td>
					<td class="discount">500원</td>
					<td class="count">1</td>
					<td class="pay_2">12,000원</td>
					<td class="count">무료배송</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>
