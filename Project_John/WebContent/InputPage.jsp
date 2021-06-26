<%@page import="Cocktail.MemberDTO"%>
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
		<% MemberDTO info = (MemberDTO) session.getAttribute("info");  %>
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 100px">
            <div class="container-fluid">
              <a class="navbar-brand" href="Main_page.jsp" style="font-family: COOKIERUN; font-size: 70px; ">MOODTAIL</a>
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
                   <%if(info!= null) {%>
                 
                  <li class="nav-item">
                    <a class="nav-link" href="LogoutService">Logout</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="My_page.jsp">Mypage</a>
                  </li>
                      <li class="nav-item">
                <a class="nav-link" href="User_Update_page.jsp">Update</a>
                </li>
                   <%}else{ %>
                   <li class="nav-item">
                    <a class="nav-link" href="Login_page.jsp">Login</a>
                  </li>
                   
                  <%} %>
                  
                </ul>
                
              </div>
            </div>
          </nav>
  
        <!-- <div id="cock" class="form-group"> -->
        <form action="http://localhost:9005/Project_John" method="post">
            <img id="Main_img" src="./C_IMG/Main_IMG.png" style="margin-left: 40%; margin-top: 250px; max-width: 600px; max-height: 400px">
            <br>
            <br>
            <p class="lead" style="text-align: center; font-family: COOKIERUN; font-size: 100px;">당신의 오늘 하루를 적어주세요.</p>
            <p class="lead">
            <input type="text" class="card border-light mb-3" name="floatingInput" id="floatingInput" style="width: 1500px; height: 100px; margin-left: 24%; font-size: 50px; text-align: center; font-family: COOKIERUN; color: #ffffff;">
             <% if(info!= null){%>
            <input type="hidden"  class="form-control" name="FAVORITE_FLAVOR" id="FAVORITE_FLAVOR" value="<%=info.getFavotite_Flavor() %>">
            <input type="hidden" class="form-control" name="ALCOHOL_TYPE" id="ALCOHOL_TYPE" value="<%=info.getAlcohol_type() %>">
            <input type="hidden" class="form-control" name="USER_ID" id="USER_ID" value="<%=info.getId() %>">
            <br>
             <%}%>
             <br>
            <input type="submit" class="btn btn-light text-dark" value="오늘 나에게 어울리는 칵테일 보기" style="margin-left: 1000px; width: 900px; height: 100px; font-family: COOKIERUN; margin-bottom: 250px; font-size: 50px">
           
            </p>
        </form>
        </div>

          <script src="js/bootstrap.js"></script>
<%response.setCharacterEncoding("UTF-8"); %>
<%request.setCharacterEncoding("UTF-8"); %>
    </body>
</html>