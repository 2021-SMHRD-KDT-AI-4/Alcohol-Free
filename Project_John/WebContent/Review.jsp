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
                  <li class="nav-item">
                    <a class="nav-link" href="Login_page.jsp">Login</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="My_page.jsp">Mypage</a>
                  </li>
                </ul>
                
              </div>
            </div>
          </nav>
      
      <div id="cock" class="form-group">
          <h1>���� �ۼ�</h1>
          <br>
          <br>
          <form action="Review_Service" method="post" enctype="multipart/form-data">
          <p class="lead" style="text-align: center;">��õ ���� Ĭ������ ��̳���?</p>
          <p class="lead">���� ����</p>
          <input type="text" class="form-control" id="TITLE" name="TITLE">
          <br>
          <p class="lead">���� ���ε�</p>
          <div class="filebox"> 
          <input class="upload-name" value="���ϼ���" disabled="disabled"> 
          <label class="btn btn-light" for="input-file">
                    ���� ÷��
          </label>
          <input type="file" class="upload-name" name="INPUT_FILE" id="input-file" style="display: none;" accept="image/*">
          </div>
          <br>
          <br>
          <p class="lead">���� �ۼ�
          <textarea class="form-control" id="REVIEW" name="CONTENT"></textarea>
          <div id="test_cnt">(0 / 200)</div>
          <br>
          <input type="submit" class="btn btn-light text-dark" value="�����ۼ�" style="width: 500px;" onclick="community_insult()">
			</form>
      </div>

		<script src="./js/jquery-3.6.0.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script>

          $(document).ready(function() {
              $('textarea').keyup(function() {
            	  var len = $('textarea').val().length;
            	  $('#test_cnt').text('('+len+' / 200)');
                  
              });
          });

          $(document).ready(function(){ 
              var fileTarget = $('#input-file'); 
              
              fileTarget.on('change', function(){ 
                  if(window.FileReader){ 
                      var filename = $(this)[0].files[0].name; } else { 
                          var filename = $(this).val().split('/').pop().split('\\').pop(); 
                      } 
                      $(this).siblings('.upload-name').val(filename); 
                  });
              }); 
          function community_insult(){
        	  
  			$.ajax({
  				type : "post",  //������ ���� ��� 
  				data : {"text" : "call"}, //������ ������ �� 
  				url : "communityService", // ���� ���� �̸� 
  				dataType : "text", // �������� ���� ������  
  				success : function(data){
  					alert(data);					
  				},
  				error :function(){
  					alert("����!");
  				}
  			})
  		}

              
          </script>
    </body>
</html>