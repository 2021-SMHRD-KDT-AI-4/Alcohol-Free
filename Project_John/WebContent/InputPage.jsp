<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="UTF-8">
    <title>INPUT</title>
    <link rel="stylesheet" href="css/bootstrap.css">
        <style>

            h1{
                text-align: center;
            }
            div.form-group{
                padding-top: 250px;
                width: 500px;
                margin: auto;
                padding-bottom: 250px;
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
                    <a class="nav-link" href="Login.jsp">Login</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="Mypage.jsp">Mypage</a>
                  </li>
                </ul>
                <form class="d-flex" action="Serch_Service" method="post">>
                  <input class="form-control me-sm-2" type="text" placeholder="Search">
                  <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                </form>
                </div>
            </div>
        </nav>
  
        <div id="cock" class="form-group">
        <form action="Recommend_Result_page.jsp">
            <h1>칵테일 추천</h1>
            <br>
            <br>
            <p class="lead" style="text-align: center;">당신의 오늘 하루를 적어주세요.</p>
            <p class="lead">
            <input type="text" class="form-control" name="floatingInput" id="floatingInput">
            <br>
            <input type="submit" class="btn btn-outline-light" value="칵테일 추천 받기" style="width: 500px;">
            </p>
        </form>
        </div>

          <script src="js/bootstrap.js"></script>
    </body>
</html>