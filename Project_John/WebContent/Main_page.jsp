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
                <h2>Ĭ���� ��õ ������???</h2>
                <br>
                <p>�ʴ� ���� ���� �س� ���ð��ʹ�</p>
                <p>���� ���� ���ž� �Ѵ�</p>
                <p>�׷��� �츮�� ��õ���ش�</p>
                <br>
                <br>
                <input class="btn btn-lg btn-primary" type="submit" value="��õ ������ ����">
            </div>
            </form>
          </div>




          <script src="js/bootstrap.js"></script>
    </body>
</html>