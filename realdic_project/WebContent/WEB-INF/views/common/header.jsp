<%@page import="java.util.Date"%>
<%@page import="api.vo.Tweet"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
    @SuppressWarnings("unchecked") //Object->List변환 시 에러메세지 제거용
    List<Tweet> tweetList = (List<Tweet>)request.getAttribute("tweetList");
    
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RealDic - 例文/画像検索サービス</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">
	<script>
	window.onload = function(){
		//검색어 없을 때 검색 버튼 누르면 사용자 메시지 띄우기
		document.querySelector("#search").addEventListener("submit", function(){
		var query = document.querySelector("#query");
		console.log(query.value);
			if(query.value == null){
				alert('검색어를 입력하세요.');
				return false;
			}
			else{
				return true;		
			}
		});
		
		
/*        
 * <div id="tweet-box">  tweet-box div안에 tweets div 반복 생성 
 
 (생성 예시)
 <div class="tweets">
        <span class="screen-name">ScreenName</span> <span class="id">@ID</span> | <span>2021/01/01</span>
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorem voluptate qui</p>
    </div> */
	    
	    var tweetBox = document.querySelector("#tweet-box");
    <% if(tweetList != null){ %>
    
    <% for(int i = 0; i < tweetList.size(); i++) {  
    	String userName = tweetList.get(i).getUserName();
    	String userId = tweetList.get(i).getUserId();
    	Date createdAt = tweetList.get(i).getCreatedAt();
    	String text = tweetList.get(i).getText();
    	text = text.replaceAll("[\n\"]", "");
    	text = text.replaceAll("[\"]", "");
    	Tweet tweet = new Tweet(userName, userId, createdAt, text); 
    	System.out.println("[" + text + "]");
    %>
    	
	    var tweetDiv = document.createElement("div");
	    tweetDiv.classList.add("tweets");
	    var spanName = document.createElement("span");
	    spanName.classList.add("screen-name");
	    spanName.innerText = "<%= userName %> ";
	    var spanId = document.createElement("span");
	    spanId.classList.add("id");
	    spanId.innerText = "@<%= userId %>";
	    var spanDate = document.createElement("span");
	    spanDate.innerText = " | <%= createdAt %>";
	    var pText = document.createElement("p");
	    pText.innerHTML = "<%= text %>";
	    var br = document.createElement("br");
	    
		tweetBox.appendChild(tweetDiv);
	    tweetDiv.appendChild(spanName);
	    tweetDiv.appendChild(spanId);
	    tweetDiv.appendChild(spanDate);
	    tweetDiv.appendChild(pText);
	    tweetBox.appendChild(br);
	    
<%-- 	    console.log('<%= text %>'); --%>

 		<% } %>	 
 	<% } %>	 

	};
	</script>
</head>
<body>
    <header>
        <p id="title-sub">例文/画像検索サービス</p>
        <div id="titleDiv">
            <a href="<%= request.getContextPath() %>/index.jsp"><h1>REALDIC</h1></a>
            <p>Korean</p>
        </div>
        <p>「ネイティブはこの言葉をどう使うの？」<br>
            「ネイティブが使う<span id="empha">リアルな韓国語</span>が知りたい！」
        </p>
        <form id="search" action ="<%=request.getContextPath() %>/api/twitter.do" method="GET">
            <input type="search" name="query" id="query" placeholder="調べたい言葉を入力">
            <input type="submit" value="検索"  id="btn">
        </form>
        <br>
    </header>