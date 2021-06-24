<%@page import="java.util.ArrayList"%>
<%@page import="Cocktail.CocktailDAO"%>
<%@page import="Cocktail.CocktailDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title>SEARCH</title>
<link rel="stylesheet" href="css/bootstrap.css">
<style>

    h1{
        text-align: center;
    }
    div.form-group{
        padding-top: 50px;
        width: 500px;
        margin: auto;
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
    
    <div id="cock" class="form-group">
        <h1>검색 결과</h1>
        <p class="lead">
            <br>
            <form class="d-flex" action="Search_Content.jsp" method="post">
                <input id = "Search_content"  class="form-control me-sm-2" type="text" placeholder="Search" name ="Search_content">
 
                <input class="btn btn-secondary my-2 my-sm-0" type="button" value="Search" onclick="searchFunction()" >
            </form>
        </p>
    </div>

    <div class="container py-4" id= "ajaxTable">
        <div class="card border-dark mb-3">
            <div class="container-fluid py-5">           
              <p id="p" class="col-md-8 fs-4"></p>
            </div>
        </div>
        <div class="card border-dark mb-3">
            <div class="container-fluid py-5">
              <p class="col-md-8 fs-4">내용</p>
            </div>
        </div>
        <div class="card border-dark mb-3">
            <div class="container-fluid py-5">
              <p class="col-md-8 fs-4">내용</p>
            </div>
        </div>
        <div class="card border-dark mb-3">
            <div class="container-fluid py-5">
              <p class="col-md-8 fs-4">내용</p>
            </div>
        </div>
        <div class="card border-dark mb-3">
            <div class="container-fluid py-5">
              <p class="col-md-8 fs-4">내용</p>
            </div>
        </div>
        <div class="card border-dark mb-3">
            <div class="container-fluid py-5">
              <p class="col-md-8 fs-4">내용</p>
            </div>
        </div>
    </div>

        
          

<!-- <script src="./js/bootstrap.bundle.min.js"></script> -->


<script src="./js/jquery-3.6.0.min.js"></script>
  
         <script>
            function searchFunction(){
               var input =$('#Search_content').val();
                
               
               $.ajax({
                  type :"post", //데이터 보내는 방식
                  data : {"Search_content": input}, // 서버로 보내는 데이터  
                  url : "Search_Service" , //  서버 파일 이름
                  dataType : "text",
                  success : function(data){
                           alert(data);         
                           
                      $('#p').html(data); 
                     
                  },
                  error : function(){
                     alert("바보");
                  }
               })
               
               
            }
         
         </script>

</body>
</html>