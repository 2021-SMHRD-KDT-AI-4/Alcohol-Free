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
    <title>COCKTAIL INFO</title>

    <link rel="stylesheet" href="css/bootstrap.css">
    <style>

        h1{
            padding-top: 50px;
            text-align: center;
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
            <form class="d-flex" action="Search_Content.jsp" method="post">
                <input class="form-control me-sm-2" type="text" placeholder="Search">
                <input class="btn btn-secondary my-2 my-sm-0" type="submit" value="Search">
            </form>
            </div>
        </div>
    </nav>
    
<main>

    <h1>칵테일 정보 더보기</h1>
    
    <br>

    <div class="container py-4">
        <div class="row align-items-md-stretch">
          <div class="col-md-6 card border-primary mb-3">
              <div style="margin-top: 20px;">
            <div class="card-header"><h2>칵테일 정보</h2></div>
                <div class="card-body">
                    <h4 class="card-title">도수</h4>
                    <p class="card-text">10도</p>
                    <h4 class="card-title">맛</h4>
                    <p class="card-text">단맛</p>
                </div>
            </div>
          </div>
          <div class="col-md-6 card border-info mb-3">
            <div style="margin-top: 20px;">
            <div class="card-header"><h2>칵테일 레시피</h2></div>
                <div class="card-body">
                    <h4 class="card-title">레시피</h4>
                    <p class="card-text">1.일번을 넣는다</p>
                    <p class="card-text">2.이번을 넣는다</p>
                    <p class="card-text">3.섞는다</p>
                    <p class="card-text">4.마신다</p>
                </div>
            </div>
        </div>

        <div class="card bg-light mb-3">
            <div class="container-fluid py-5 text-primary">
              <h2 class="display-5 fw-bold">유래</h2>
              <p class="col-md-8 fs-4">칵테일 유래</p>
            </div>
          </div>
</main>


    
  </body>
</html>
