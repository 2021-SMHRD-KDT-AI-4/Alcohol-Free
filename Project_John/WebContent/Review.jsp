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
                  <a class="nav-link" href="Community,jsp">Community</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Login_page.jsp">Login</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="My_page.jsp">Mypage</a>
                </li>
              </ul>
              <form class="d-flex" action="Serch_Service" method="post">
                <input class="form-control me-sm-2" type="text" placeholder="Search">
                <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
              </form>
              </div>
          </div>
      </nav>

      
      <div id="cock" class="form-group">
          <h1>리뷰 작성</h1>
          <br>
          <br>
          <p class="lead" style="text-align: center;">추천 받은 칵테일은 어떠셨나요?</p>
          <p class="lead">리뷰 제목</p>
          <input type="text" class="form-control" id="floatingInput">
          <br>
          <p class="lead">사진 업로드</p>
          <div class="filebox"> 
          <input class="upload-name" value="파일선택" disabled="disabled"> 
          <label class="btn btn-light" className="input-file-button" for="input-file">
              사진 첨부
          </label>
          <input type="file" class="upload-name" name="file" id="input-file" style="display: none;" accept="image/*">
          </div>
          <br>
          <br>
          <p class="lead">리뷰 작성
          <textarea class="form-control" id="floatingInput" ></textarea>
          <div id="test_cnt">(0 / 200)</div>
          <br>
          <input type="submit" class="btn btn-light" value="리뷰작성" style="width: 500px;">
          </p>
      </div>

        <script src="js/bootstrap.js"></script>
        <script>

          $(document).ready(function() {
              $('#input-file').on('keyup', function() {
                  $('#test_cnt').html("("+$(this).val().length+" / 200)");
        
                  if($(this).val().length > 200) {
                      $(this).val($(this).val().substring(0, 200));
                      $('#test_cnt').html("(200 / 200)");
                  }
              });
          });

          $(document).ready(function(){ 
              var fileTarget = $('.filebox .upload-hidden'); 
              
              fileTarget.on('change', function(){ 
                  if(window.FileReader){ 
                      var filename = $(this)[0].files[0].name; } else { 
                          var filename = $(this).val().split('/').pop().split('\\').pop(); 
                      } 
                      $(this).siblings('.upload-name').val(filename); 
                  });
              });

              
          </script>
    </body>
</html>