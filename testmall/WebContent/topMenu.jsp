<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="header">
	<div class="logo">
		<a href="index.jsp"> <img src="images/logo.gif" alt="" />
		</a>
	</div>
	<div class="menu">
		<ul>
			<li><a href="sub/news.jsp">NEWS</a></li>
			<li><a href="sub/magazine.jsp">MAGAZINE</a></li>
			<li><a href="sub/about.jsp">ABOUT</a></li>
			<li><a href="sub/event.jsp">EVENT</a></li>
		</ul>
	</div>
	<div class="gnb">
		<ul>
 			<c:if test="${loginUser.name != null}">
				<li><a>${loginUser.name}님.</a></li>
				<li><a href="logout.do">logout</a></li>
			</c:if>
			<c:if test="${loginUser.name == null}">
				<li><a href="login.do">LOGIN</a></li>
			</c:if>
			
			<li><a href="sub/cart.jsp">CART(0)</a></li>
			<li><a href="sub/my_info.jsp">MY</a></li>
		</ul>
	</div>
</div>

