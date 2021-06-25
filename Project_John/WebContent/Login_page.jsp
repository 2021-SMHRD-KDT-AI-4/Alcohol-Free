<%@page import="Cocktail.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="css/bootstrap.css">
        <style>

            h1{
                text-align: center;
            }
            div.form-group{
                padding-top: 14.5%;
                width: 30%;
                margin: auto;
                padding-bottom: 14.5%;
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
=======

        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 100px">
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-4/Alcohol-Free.git
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
<<<<<<< HEAD
                    <a class="nav-link" href="LogoutService">Logout</a>
=======
                    <a class="nav-link" href="Login_page.jsp">Login</a>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-4/Alcohol-Free.git
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


        <div class="form-group">
            <h1>로그인</h1>
                <br>
                <br>
                <form action="Login_Service" method="post">
		            <div class="form-floating mb-3">
		                <input type="text" class="form-control" name="ID" placeholder="Id">
		                <label for="floatingInput">아이디</label>
		            </div>
		            <div class="form-floating">
		                <input type="password" class="form-control" name="PW" placeholder="Password">
		                <label for="floatingPassword">비밀번호</label>
		            </div>
		            <div class="d-grid gap-2">
		                <br>
		                <input class="btn btn-light text-dark" type="submit" value="로그인">
		            </div>
            	</form>
            <div>아직 회원이 아니신가요? <a href="Join_page.jsp">회원가입</a>
            </div>
        </div>

          <script src="js/bootstrap.js"></script>
    </body>
</html>