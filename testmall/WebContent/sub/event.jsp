<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ��� ��Ŭ��� -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>
<div class="wrapper">

<!-- top �޴��� -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>

<div class="container event">
	<div class="con">
		<ul>
			<li>
				<div class="item">
					<a href=""><img src="images/event/img1.jpg" alt=""></a>
				</div>
			</li>
			<li>
				<div class="item on">
					<a href=""> <img src="images/event/img2.jpg" alt=""> <span
						class="title">Lorem</span> <span class="des">Lorem ipsum
							dolor sit amet, consectetur adipisicing elit.</span> <span class="date">2017.02.24
							~ 2017.03.20</span>
					</a>
				</div>
				<div class="item on">
					<a href=""> <img src="images/event/img4.jpg" alt=""> <span
						class="title">Lorem</span> <span class="des">Lorem ipsum
							dolor sit amet, consectetur adipisicing elit.</span> <span class="date">2017.06.10
							~ 2017.06.24</span>
					</a>
				</div>
			</li>
		</ul>
	</div>
</div>

</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>
