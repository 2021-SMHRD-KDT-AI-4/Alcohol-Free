<%@page import="Cocktail.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>MAIN</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <style>
            
            div.left {
                margin-top: 10%;
                
                width: 30%;
                
                margin-left: 20%;

            }
            div.right {
                margin-left: 35%; 
                
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
        <% MemberDTO info = (MemberDTO) session.getAttribute("info");  %>
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
                
              </div>
            </div>
          </nav>

          <div>
            <div class="left">
                <img id="Main_img" src="./C_IMG/Main_IMG.png" style="margin-left: 65%; max-width: 600px; max-height: 400px">
            </div>
            <form action="InputPage.jsp">
            <div class="right">
                <h1 style="font-family: COOKIERUN;">내 기분에 맞는 칵테일 한잔, 어떠신가요?</h1>
                <h4 style="font-family: COOKIERUN; color: #ffffff; margin-left: 60px">#너는지금술이땡긴다&nbsp;&nbsp;&nbsp;#당장마셔야함&nbsp;&nbsp;&nbsp;#우리가추천해줄게</h4>
                <br>
                <input class="btn btn-lg btn-light text-dark" type="submit" value="지금 바로 추천 받아보기!" style="width: 600px; font-family: COOKIERUN; font-size: 50px; margin-left: 150px;  margin-bottom: 25%; color: #0000">
            </div>
            </form>
          </div>




          <script src="js/bootstrap.js"></script>
    </body>
</html>