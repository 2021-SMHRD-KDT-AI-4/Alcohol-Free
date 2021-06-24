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
        </style>
    </head>
    <body>
        <br>

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
                    <a class="nav-link" href="Community.jsp">Community</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="Login_Service">Login</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="My_page.jsp">Mypage</a>
                  </li>
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
		                <input class="btn btn-lg btn-primary" type="submit" value="로그인">
		            </div>
            	</form>
            <div>아직 회원이 아니신가요? <a href="Join_page.jsp">회원가입</a>
            </div>
        </div>

          <script src="js/bootstrap.js"></script>
    </body>
</html>