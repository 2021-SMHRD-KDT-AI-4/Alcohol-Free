<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Cocktail.CocktailDTO"%>
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
      div.c{
      padding-top: 100px;
      text-align: center;
      }
      h1{
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
           
            </div>
        </div>
    </nav>


    <main>
        <div class="container py-4">
            
			<div class="c">
				<h3 class="fw-light">추천 결과 보기 </h3>
				<input class="btn btn-light" id="Recomend" type="button" value="추천 결과 보기" style="width: 150px;" onclick="Recomend()">
			</div>
            <div class="row align-items-md-stretch" style="margin-top: 148px;">
              <div class="col-md-6">
                  <div style="margin-top: 20px;">
                <div class="card-header"></div>
                    <div class="card-body" id="cimg">
                        
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
                        <p class="card-text" id="cname"></p>
                        <br>
                        <h4 class="card-title">한줄 문구</h4>
                        <p class="card-text" id="crecomend"></p>
                    </div>
                </div>
            </div>
            </div>
            <div class="b">
            </div>
          </div>
          
          <br>
           <h1>칵테일 정보 더보기</h1>
    
    <br>

    <div class="container py-4">
        <div class="row align-items-md-stretch">
          <div class="col-md-6 card border-primary mb-3">
              <div >
            <div class="card-header"><h2>칵테일 정보</h2></div>
                <div class="card-body">
                    <h4 class="card-title">도수</h4>
                    <p class="card-text" id="avol"></p>
                    <h4 class="card-title">베이스</h4>
                    <p class="card-text" id="base"></p>
                    <h4 class="card-title">맛</h4>
                    <p class="card-text" id="flavor"></p>
                </div>
            </div>
          </div>
          <div class="col-md-6 card border-info mb-3">
            <div style="margin-top: 20px;">
            <div class="card-header"><h2>칵테일 레시피</h2></div>
                <div class="card-body">
                    <h4 class="card-title">재료</h4>
                    <p class="card-text" id="ci"></p>
                    <h4 class="card-title">레시피</h4>
                    <p class="card-text" id="rec"></p>
                    
                </div>
            </div>
        </div>

        <div class="card bg-light mb-3">
            <div class="container-fluid py-5 text-primary">
              <h2 class="display-5 fw-bold">유래</h2>
              <p class="col-md-8 fs-4" id="his"></p>

            </div>
          </div>
		</div>
	</div>
	</main>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./js/jquery-3.6.0.min.js"></script>
	<script>
	var data2 = [];
	/* 버튼 눌렀을 때 실행될 함수 */
	function Recomend(){
		 $.ajax({
		   	 url : 'Recommend_Sevice', /* 데이터를 가지고 올 서블릿, JSP 등 주소 */
		   	 success : function(data){
		   		 alert("성공");
		   		 console.log(data);
		   		 data2 = data;
		   		 $('div#cimg').append("<img src=" + JIMG +">");
		   		 $('p#cname').append("<p>"+ JID +"</p>" );
		   		 $('p#crecomend').append("<p>"+ JLEN +"</p>");
		   		 $('p#avol').append("<p>"+ JVOL +"</p>");
		   		 $('p#base').append("<p>"+ JBASE +"</p>");
		   		 $('p#flavor').append("<p>"+ JFLAVOR +"</p>");
		   		 $('p#ci').append("<p>"+ JINGREDIENT +"</p>");
		   		 $('p#rec').append("<p>"+ JREC +"</p>");
		   		 $('p#his').append("<p>"+ JHIS +"</p>");
		   	 },
		     	 error : function(){
		     		 alert("실패");
		     	 }
		     });
	}
	
   
/* 	$('#Recomend').on('click', function(){

    
	}); */
	

	</script>
      
  </body>
</html>
