<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.83.1">
    <title>TODAY COCKTAIL</title>

    <link rel="stylesheet" href="css/bootstrap.css">

    <style>
      div.b{
        margin-bottom: 148px;
      }
    </style>
  </head>
  <body>
    <br>

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Cocktail</a>
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


    <main>
        <div class="container py-4">
            

            <div class="row align-items-md-stretch" style="margin-top: 148px;">
              <div class="col-md-6">
                  <div style="margin-top: 20px;">
                <div class="card-header"></div>
                    <div class="card-body">
                        <img src="./img/c_img1.png">
                    </div>
                </div>
              </div>
              <div class="col-md-6 card border-info mb-3">
                <div style="margin-top: 20px;">
                <div class="card-header"><h2>오늘의 칵테일</h2></div>
                <br>
                <br>
                    <div class="card-body">
                        <h4 class="card-title">칵테일 이름</h4>
                        <p class="card-text">마가리타</p>
                        <br>
                        <h4 class="card-title">한줄 문구</h4>
                        <p class="card-text">문구다 이자시가</p>
                        <br>
                        <p class="card-text">이 칵테일에 대한 더 많은 정보를 원한다면</p>
                        <button class="btn btn-primary btn-lg" type="button">칵테일 정보 더보기</button>
                    </div>
                </div>
            </div>
            <div class="b">

            </div>
    </main>

    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>
