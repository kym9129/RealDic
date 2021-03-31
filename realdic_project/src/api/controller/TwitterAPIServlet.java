package api.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import api.vo.Tweet;
import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;


@WebServlet("/api/twitter.do")
public class TwitterAPIServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//사용자 입력값 가져오기
		String keyword = request.getParameter("query");
		
		//twitter api 라이브러리
		Twitter twitter = TwitterFactory.getSingleton();
		Query query = new Query(keyword);
		List<Tweet> tweetList = null;
		try {
			//검색 실행
			QueryResult result = twitter.search(query);
			
			//검색결과
			tweetList = new ArrayList<>();
			for(Status status : result.getTweets()) {
//				 System.out.println("[ " + i + ":" + status.getUser().getName() +"@"+ status.getUser().getScreenName() + "][date:" + status.getCreatedAt() + "]\n ->" + status.getText());
				 tweetList.add(new Tweet(status.getUser().getName(), status.getUser().getScreenName(), status.getCreatedAt(), status.getText()));
			}
//			System.out.println(tweetList);
			
		} catch (TwitterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//검색결과 리스트?객체? 속성에 담기
		request.setAttribute("tweetList", tweetList);

		
		//jsp위임
		request.getRequestDispatcher("/WEB-INF/views/searchResult.jsp").forward(request, response);
		
	}

}
