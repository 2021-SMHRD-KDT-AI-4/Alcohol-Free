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
              <a class="navbar-brand" href="#">Cocktail</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
          
              <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav me-auto">
                  <li class="nav-item">
                    <a class="nav-link active" href="#">Home
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

        <div class="form-group">
            <h1>�α���</h1>
                <br>
                <br>
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="Id">
                <label for="floatingInput">���̵�</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                <label for="floatingPassword">��й�ȣ</label>
            </div>
            <div class="d-grid gap-2">
                <br>
                <button class="btn btn-lg btn-primary" type="button">�α���</button>
            </div>
            <div>
                ���� ȸ���� �ƴϽŰ���? <a href="Join_page">ȸ������</a>
            </div>
        </div>

          <script src="js/bootstrap.js"></script>
    </body>
</html>