<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Cocktail.WishlistDTO"%>
<%@page import="Cocktail.WishlistDAO"%>
<%@page import="Cocktail.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="UTF-8">
  <title>REVIEW</title>
  <link rel="stylesheet" href="css/bootstrap.css">
      <style>
          h1{
              text-align: center;
          }
          div.form-group{
              padding-top: 100px;
              width: 500px;
              margin: auto;
              padding-bottom: 100px;
          }
          textarea{
              width: 500px;
              height: 300px;
              resize:none;
          }
          div.container-fluid {
                height: 50px;
          }
          div#navbarColor01{
          		float: right;
            	text-align: right;
            	font-family: COOKIERUN;
          }          
      </style>
  </head>
  <body>
        <br>
<<<<<<< HEAD
 <% MemberDTO info = (MemberDTO) session.getAttribute("info");  %>
      <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
          <div class="container-fluid">
            <a class="navbar-brand" href="Main_page.jsp">Cocktail</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
        
            <div class="collapse navbar-collapse" id="navbarColor01">
              <ul class="navbar-nav me-auto">
                <li class="nav-item">
                  <a class="nav-link active" href="Main_page.jsp">Home
                    <span class="visually-hidden">(current)</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Community,jsp">Community</a>
                </li>
                 <%if(info!= null) {%>
                 
                  <li class="nav-item">
                    <a class="nav-link" href="LogoutService">Logout</a>
                  </li>
                  <li class="nav-item">
                  <a class="nav-link" href="My_page.jsp">Mypage</a>
                </li>
                   <%}else{ %>
                   <li class="nav-item">
                    <a class="nav-link" href="Login_page.jsp">Login</a>
                  </li>
                   
                  <%} %>
                
              </ul>
              
=======

        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 100px">
            <div class="container-fluid">
              <a class="navbar-brand" href="Main_page.jsp" style="font-family: COOKIERUN; font-size: 70px;">MOODTAIL</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
          
              <div class="collapse navbar-collapse" id="navbarColor01" style="float: right;">
                <ul class="navbar-nav me-auto">
                  <li class="nav-item">
                    <a class="nav-link active" href="Main_page.jsp">Home
                      <span class="visually-hidden">(current)</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="Community.jsp">Community</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="Login_page.jsp">Login</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="My_page.jsp">Mypage</a>
                  </li>
                </ul>
                
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-4/Alcohol-Free.git
              </div>
<<<<<<< HEAD
          </div>
      </nav>
<% 
	    
		WishlistDAO wdao = new WishlistDAO();
		WishlistDTO wdto = new WishlistDTO(info.getId());
		String user_id =info.getId();
		System.out.print(user_id);
		
		%>
		
=======
            </div>
          </nav>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-4/Alcohol-Free.git
      
      <div id="cock" class="form-group">
          <h1><%=user_id %>님의 리뷰 작성</h1>
          <br>
          <br>
          <form action="Review_Service" method="post" enctype="multipart/form-data">
          <p class="lead" style="text-align: center;">추천 받은 칵테일은 어떠셨나요?</p>
          <p class="lead">리뷰 제목</p>
          <input type="text" class="form-control" id="TITLE" name="TITLE">
          <input type="hidden" class="form-control" value="<%=user_id %>" name="user_id" id="user_id">
          <br>
          <p class="lead">사진 업로드</p>
          <div class="filebox"> 
          <input class="upload-name" value="파일선택" disabled="disabled"> 
          <label class="btn btn-light" for="input-file">
                    사진 첨부
          </label>
          <input type="file" class="upload-name" name="INPUT_FILE" id="input-file" style="display: none;" accept="image/*">
          </div>
          <br>
          <br>
          <p class="lead">리뷰 작성
          <textarea class="form-control" id="REVIEW" name="CONTENT"></textarea>
          <div id="test_cnt">(0 / 200)</div>
          <br>
<<<<<<< HEAD
          <input type="submit" class="btn btn-light" value="리뷰작성" style="width: 500px;">
=======
          <input type="submit" class="btn btn-light text-dark" value="리뷰작성" style="width: 500px;" onclick="community_insult()">
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-4/Alcohol-Free.git
			</form>
      </div>

		<script src="./js/jquery-3.6.0.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script>

          $(document).ready(function() {
              $('textarea').keyup(function() {
            	  var len = $('textarea').val().length;
            	  $('#test_cnt').text('('+len+' / 200)');
                  
              });
          });

          $(document).ready(function(){ 
              var fileTarget = $('#input-file'); 
              
              fileTarget.on('change', function(){ 
                  if(window.FileReader){ 
                      var filename = $(this)[0].files[0].name; } else { 
                          var filename = $(this).val().split('/').pop().split('\\').pop(); 
                      } 
                      $(this).siblings('.upload-name').val(filename); 
                  });
              }); 
   /*         function community_insult(){
        	  var user_id = $('#user_id')val();   
  			$.ajax({
  				type : "post",  //데이터 전송 방식 
  				data : {"user_id" : user_id}, //서버로 보내는 값 
  				url : "Review_Service", // 서버 파일 이름 
  				dataType : "text", // 서버에서 오는 응답방식  
  				success : function(data){
  					alert(data);					
  				},
  				error :function(){
  					alert("실패!");
  				}
  			})
  		} */
 
              
          </script>
    </body>
</html>