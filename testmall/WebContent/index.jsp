<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="header.jsp"%>
<div class="container main">
	<div class="con1">
		<!-- Swiper -->
		<div class="swiper-container1">
			<div class="swiper-wrapper">
				<div class="swiper-slide swiper_slide1"></div>
				<div class="swiper-slide swiper_slide2"></div>
				<div class="swiper-slide swiper_slide3"></div>
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination1"></div>
		</div>

		<!-- Swiper JS -->
		<script src="../dist/js/swiper.min.js"></script>

		<!-- Initialize Swiper -->
		<script>
			var swiper = new Swiper('.swiper-container1', {
				pagination : '.swiper-pagination1',
				direction : 'vertical',
				slidesPerView : 1,
				paginationClickable : true,
				spaceBetween : 30,
				autoplay : 2500,
				autoplayDisableOnInteraction : false,
				mousewheelControl : false
			});
		</script>
	</div>
	<div class="con2">
		<ul>
			<li><img src="images/main/main_con2_1.jpg" alt="" /></li>
			<li><img src="images/main/main_con2_2.jpg" alt="" /></li>
		</ul>
	</div>
	<div class="con3">
		<iframe width="100%" height="550"
			src="https://www.youtube.com/embed/aeJtCe-JoCU" frameborder="0"
			allowfullscreen=""></iframe>
	</div>
	<div class="con4">
		<!-- Swiper -->
		<div class="swiper-container2">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="images/main/main_con4_1.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/main/main_con4_2.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/main/main_con4_3.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/main/main_con4_4.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/main/main_con4_5.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/main/main_con4_6.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/main/main_con4_7.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/main/main_con4_8.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/main/main_con4_9.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/main/main_con4_10.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/main/main_con4_11.jpg" alt="" />
				</div>
			</div>
			<div class="btn_wrap">
				<p>NEW ARRIVAL</p>
				<!-- Add Navigation -->
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
			</div>
		</div>

		<!-- Swiper JS -->
		<script src="../dist/js/swiper.min.js"></script>

		<!-- Initialize Swiper -->
		<script>
			var swiper = new Swiper('.swiper-container2', {
				nextButton : '.swiper-button-next',
				prevButton : '.swiper-button-prev',
				paginationClickable : true,
				slidesPerView : 3,
				spaceBetween : 50,
				autoplay : 2500,
				autoplayDisableOnInteraction : false,
				breakpoints : {
					1024 : {
						slidesPerView : 3,
						spaceBetween : 40
					},
					768 : {
						slidesPerView : 3,
						spaceBetween : 30
					},
					640 : {
						slidesPerView : 2,
						spaceBetween : 20
					},
					320 : {
						slidesPerView : 1,
						spaceBetween : 10
					}
				}
			});
		</script>
	</div>
	<div class="con5">
		<ul>
			<li>
				<img src="images/main/main_con5_1.jpg" alt="" />
				<div class="title">마이클 클락의 목소리</div>
				<div class="des">
					2004년 봄 여름을 위해 디자이너 알렉산더 맥퀸(Alexander
					McQueen)이 선택한 건 무용이었다. 테일러링을 전공한 그의 손에서 창조된 잘 재단된 패턴과, 환상처럼 반짝이는
					드레스의 우아한 움직임을 가장 극명하게 보여줄 수 있는 건, 매혹적인 동작을 끊임 없이 이어가는 무용수들의 역동적인
					움직임이었고, 알렉산더 맥퀸이 생각한 테마를 가장 잘 표현해낼 수 있는 안무가는 오직 ‘마이클 클락’ 뿐이었다.
				</div>
			</li>
			<li>
				<img src="images/main/main_con5_2.jpg" alt="" />
				<div class="title">customellow 2017 A/W CAMPAIGN Mmm...</div>
				<div class="des">
					음음음…( Mmm… )은 마이클 클락 (Michael Clark) 이 2005년부터 2007년까지 완성해 온 스트라빈스키 프로젝트(Stravinski Project)의 하나로, <봄의 제전> 음악을 바탕으로 만들어진 두번째 프로젝트이다.
				</div>
			</li>
			<li>
				<img src="images/main/main_con5_3.jpg" alt="" />
				<div class="title">customellow 2017 A/W COLLECTION Mmm...</div>
				<div class="des">
					커스텀멜로우와 박성진, 2017 A/W Mmm...
				</div>
			</li>
			<li>
				<img src="images/main/main_con5_4.jpg" alt="" />
				<div class="title">customellow 2017 A/W preview</div>
				<div class="des">
					이제 소년은 스스로의 자아와 사고 방식을 가지고 나름의 목소리를 내기 시작했다.
				</div>
			</li>
		</ul>
	</div>
</div>
<%@ include file="footer.jsp"%>
