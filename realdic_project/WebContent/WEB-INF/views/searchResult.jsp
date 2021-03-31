<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/common/header.jsp" %>
    <section>
        <!-- 이미지 클릭하면 크게보는 코드...일단 보류 -->
        <!-- <div id="gray"></div>
        <div id="big-img">
            <img src="./../../images/image 4.png" alt="">
        </div> -->
        <img src="<%=request.getContextPath() %>/images/top_icon.png" id="top" alt="">
        <h3>画像</h3>
        <div class="container">
            <img src="<%=request.getContextPath() %>/images/image 4.png" alt="">
            <!-- <img class="img-off" src="./../../images/image 4.png" alt=""> -->
            <img src="<%=request.getContextPath() %>/images/image 3.png" alt="">
            <img src="<%=request.getContextPath() %>/images/image 4 (1).png" alt="">
        </div>
        <br>
        <h3>例文</h3>
        <div id="tweet-box">
        <%--js에서 처리 : .tweets 계속 생성 --%>
<!--             <div class="tweets"> -->
<!--                 <span class="screen-name">ScreenName</span> <span class="id">@ID</span> | <span>2021/01/01</span> -->
<!--                 <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorem voluptate quidem placeat enim praesentium fugiat, pariatur veritatis atque voluptatibus velit exercitationem assumenda iste ad esse minus voluptatum illo. Nihil, qui?</p> -->
<!--             </div> -->
<!--             <br> -->
<!--             <div class="tweets">
                <span class="screen-name">ScreenName</span> <span class="id">@ID</span> | <span>2021/01/01</span>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorem voluptate quidem placeat enim praesentium fugiat, pariatur veritatis atque voluptatibus velit exercitationem assumenda iste ad esse minus voluptatum illo. Nihil, qui?</p>
            </div>
            <br>
            <div class="tweets">
                <span class="screen-name">ScreenName</span> <span class="id">@ID</span> | <span>2021/01/01</span>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorem voluptate quidem placeat enim praesentium fugiat, pariatur veritatis atque voluptatibus velit exercitationem assumenda iste ad esse minus voluptatum illo. Nihil, qui?</p>
            </div>
            <br>
            <div class="tweets">
                <span class="screen-name">ScreenName</span> <span class="id">@ID</span> | <span>2021/01/01</span>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorem voluptate quidem placeat enim praesentium fugiat, pariatur veritatis atque voluptatibus velit exercitationem assumenda iste ad esse minus voluptatum illo. Nihil, qui?</p>
            </div> -->
            <!-- <br> -->
        </div>
        <h4 id="more">▼ 続いて 読む</h4>

    </section>
    <%@include file="/WEB-INF/views/common/footer.jsp" %>