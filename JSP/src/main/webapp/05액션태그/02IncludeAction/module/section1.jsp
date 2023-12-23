<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    	String Img1 = request.getParameter("Img1");
    	String Img2 = request.getParameter("Img2");
    	String Img3 = request.getParameter("Img3");
    	String Img4 = request.getParameter("Img4");
    	String Img5 = request.getParameter("Img5");
    
    
    %>
    
    <!-- 메인배너 -->
    <section>
    <div class="main-banner">
      <div class="inner">
        <!-- Slider main container -->
        <div class="swiper">
          <!-- Additional required wrapper -->
          <div class="swiper-wrapper">
            <!-- Slides -->
            <div class="swiper-slide">
              <div class="text-group">
                <p>친구와 함께 등록시 최대 40% 할인</p>
                <h2>겨울방학 특강 오픈</h2>
                <span>혜택및 일정확인</span>

                <!--text-group 안에 pn,nav 추가 -->
                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev">
                  <i class="bi bi-arrow-left"></i>
                </div>
                <div class="swiper-button-next">
                  <i class="bi bi-arrow-right"></i>
                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination">

                </div>
                <!--text-group 안에 pn,nav 추가 -->
              </div>
              <img src="actionTest/<%=Img1 %>" alt="">
            </div>
            <div class="swiper-slide">
              <div class="text-group">
                <p>친구와 함께 등록시 최대 40% 할인</p>
                <h2>겨울방학 특강 오픈</h2>
                <span>혜택및 일정확인</span>

                <!--text-group 안에 pn,nav 추가 -->
                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev">
                  <i class="bi bi-arrow-left"></i>
                </div>
                <div class="swiper-button-next">
                  <i class="bi bi-arrow-right"></i>
                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination">

                </div>
                <!--text-group 안에 pn,nav 추가 -->

              </div>
              <img src="actionTest/<%=Img2 %>" alt="">
            </div>
            <div class="swiper-slide">
              <div class="text-group">
                <p>친구와 함께 등록시 최대 40% 할인</p>
                <h2>겨울방학 특강 오픈</h2>
                <span>혜택및 일정확인</span>

                <!--text-group 안에 pn,nav 추가 -->
                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev">
                  <i class="bi bi-arrow-left"></i>
                </div>
                <div class="swiper-button-next">
                  <i class="bi bi-arrow-right"></i>
                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination">

                </div>
                <!--text-group 안에 pn,nav 추가 -->
              </div>
              <img src="actionTest/<%=Img3 %>" alt="">
            </div>
            <div class="swiper-slide">
              <div class="text-group">
                <p>친구와 함께 등록시 최대 40% 할인</p>
                <h2>겨울방학 특강 오픈</h2>
                <span>혜택및 일정확인</span>

                <!--text-group 안에 pn,nav 추가 -->
                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev">
                  <i class="bi bi-arrow-left"></i>
                </div>
                <div class="swiper-button-next">
                  <i class="bi bi-arrow-right"></i>
                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination">

                </div>
                <!--text-group 안에 pn,nav 추가 -->

              </div>
              <img src="actionTest/<%=Img4 %>" alt="">
            </div>
            <div class="swiper-slide">
              <div class="text-group">
                <p>친구와 함께 등록시 최대 40% 할인</p>
                <h2>겨울방학 특강 오픈</h2>
                <span>혜택및 일정확인</span>

                <!--text-group 안에 pn,nav 추가 -->
                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev">
                  <i class="bi bi-arrow-left"></i>
                </div>
                <div class="swiper-button-next">
                  <i class="bi bi-arrow-right"></i>
                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination">

                </div>
                <!--text-group 안에 pn,nav 추가 -->

              </div>
              <img src="actionTest/<%=Img5 %>" alt="">


            </div>


          </div>

          <!-- If we need scrollbar -->
          <div class="swiper-scrollbar"></div>
        </div>

      </div>
      <!--inner-->

    </div>
  </section>