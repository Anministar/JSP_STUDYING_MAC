<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 토글슬라이드 -->
<section class="banner-toggle">

	<!-- 토글버튼 -->
	<div class="inner">
		<div class="left">
			<span style="font-size: 16px; color: white;">토글버튼-----></span> <a
				href="javascript:void(0)"><i class="bi bi-caret-up"></i></a>
		</div>
		<div class="right"></div>
	</div>

	<!-- 토글 되는 배너  배너 (다중슬라이드) -->
	<div class="second-banner toggle-banner">
		<div class="inner">
			<!-- Slider main container -->
			<div class="swiper">
				<!-- Additional required wrapper -->
				<div class="swiper-wrapper">
					<!-- Slides -->
					<div class="swiper-slide">
						<img src="image/2022_Chrismas2_PTF.png" alt="">
					</div>
					<div class="swiper-slide">
						<img src="image/2022_Chrismas2_PTF.png" alt="">
					</div>
					<div class="swiper-slide">
						<img src="image/2022_Chrismas2_PTF.png" alt="">
					</div>
					<div class="swiper-slide">
						<img src="image/2022_Chrismas2_PTF.png" alt="">
					</div>
					<div class="swiper-slide">
						<img src="image/2022_Chrismas2_PTF.png" alt="">
					</div>
					<div class="swiper-slide">
						<img src="image/2022_Chrismas2_PTF.png" alt="">
					</div>

				</div>

				<!-- If we need pagination -->
				<div class="swiper-pagination"></div>

				<!-- If we need navigation buttons -->
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>

				<!-- If we need scrollbar -->
				<div class="swiper-scrollbar"></div>
			</div>

		</div>
	</div>

</section>