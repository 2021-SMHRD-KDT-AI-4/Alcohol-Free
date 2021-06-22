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
                width: 50%;
                float: left;

            }
            div.right {
                margin-top: 250px;
                margin-bottom: 258px;
                width: 50%;
                float: right;
            }
            div.container-fluid {
                height: 50px;
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
                    <a class="nav-link" href="Login_page.jsp">Login</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="My_page.jsp">Mypage</a>
                  </li>
                </ul>
                <form class="d-flex">
                  <input class="form-control me-sm-2" type="text" placeholder="Search">
                  <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                </form>
              </div>
            </div>
          </nav>

          <div>
            <div class="left">
                <img id="Main_img" src="ex01.png">
            </div>
            <form action="InputPage.jsp">
            <div class="right">
                <h2>칵테일 추천 받을래???</h2>
                <br>
                <p>너는 지금 술이 준내 마시고싶다</p>
                <p>고로 당장 마셔야 한다</p>
                <p>그러니 우리는 추천해준다</p>
                <br>
                <br>
                <input class="btn btn-lg btn-primary" type="submit" value="추천 받으러 가기">
            </div>
            </form>
          </div>




          <script src="js/bootstrap.js"></script>
    </body>
</html>