<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="Cocktail.MemberDTO"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.83.1">
    <title>MYPAGE</title>

    <link rel="stylesheet" href="css/bootstrap.css">

    <style>
      div.t_box{
        position: sticky;
      }
      div#al{
          margin: auto;
      }
    </style>
  </head>
  <body>
    
    <body class="bg-light">
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
                <li class="nav-item">
                <a class="nav-link" href="User_Update_page.jsp">Update</a>
                </li>
            </ul>
            <form class="d-flex" action="Serch_Service" method="post">
                <input class="form-control me-sm-2" type="text" placeholder="Search">
                <input class="btn btn-secondary my-2 my-sm-0" type="submit" value="Search">
            </form>
            </div>
        </div>
        </nav>

		
		<% 
	    MemberDTO info = (MemberDTO)session.getAttribute("info"); 
		%>
		
		
    <main>
        <section class="py-5 text-center container">
            <div class="row py-lg-5">
                <div class="col-lg-6 col-md-8 mx-auto">
                <% if(info!= null){
                     %>
                    <h1 class="fw-light">마이페이지</h1>
                    <br>
                    <p>
                        <div id="al" class="card border-info mb-3" style="max-width: 20rem;">
                            <div class="card-header">주량</div>
                            <div class="card-body">
                                <p class="card-text"><%=info.getAlcohol_capacity() %>병</p>
                                <%} %>
                        	</div>
                    	</div>
                    </p>
                </div>
            </div>
        </section>

        <div class="container">
		<h3 class="fw-light">찜목록 </h3>
          <input class="btn btn-light" id="like_btn" type="button" value="찜목록 보기" style="width: 150px" onclick="location.href='Recommend_Result_page.jsp'">
          <input class="btn btn-light" id="like_btn" type="button" value="리뷰 작성" style="width: 150px" onclick="location.href='Review.jsp'">
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
          
            <div class="col">
              <div class="card shadow-sm">
                <img src="./C_IMG/margarita.png">
                <div class="card-body">
                  <p class="card-text">칵테일이름</p>
                  <p class="card-text">"내가 남긴 한줄문구"</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                    <form action="Recommend_Result_page.jsp">
                      <input type="submit" class="btn btn-sm btn-outline-secondary" value="더보기">
                    </form>
                    </div>
                  </div>
                </div>
              </div>
            </div> 
          </div>
        </div>
    </main>

    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>