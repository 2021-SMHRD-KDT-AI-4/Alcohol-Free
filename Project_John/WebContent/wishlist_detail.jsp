<%@page import="Cocktail.MemberDTO"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="Cocktail.WishlistDTO"%>
<%@page import="Cocktail.WishlistDAO"%>
<%@page import="Cocktail.CocktailDAO"%>
<%@page import="Cocktail.ResultDTO"%>
<%@page import="Cocktail.ResultDAO"%>
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
    <title>MYPAGE COCKTAIL</title>

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
      #wish_btn{
      	position: fixed;
      	top:200px;
	    right:0px;
      }div.container-fluid {
                height: 50px;
            }
            div#navbarColor01{
            	float: right;
            	text-align: right;
            	font-family: COOKIERUN;
            }
        </style>
    </head>
    <body style="font-family: COOKIERUN;">
        <br>
		
    <br>
  <% MemberDTO info = (MemberDTO) session.getAttribute("info");  %>
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
      </div>
    </div>
  </nav>
 <%
 
 String cocktail_id = URLDecoder.decode(request.getParameter("cocktail_id"), "euc-kr");
 
 System.out.println("cocktail_id"+cocktail_id);
	response.setContentType("text/html;");
	CocktailDAO dao = new CocktailDAO();
	CocktailDTO cinfo = dao.C_Info(cocktail_id);
  
%>

    <main>
        <div class="container py-4">
            
         
            <div class="row align-items-md-stretch" style="margin-top: 148px;">
             
              
              <div class="card-body" id="cimg" style="width: 50%; float: left; box-sizing: border-box;">
                <img src="<%=cinfo.getCocktail_IMG()%>"> 
              </div>
              
              <div class="col-md-6 card border-info mb-3" style="width: 50%; float: right; box-sizing: border-box; font-family: COOKIERUN; ">
                  <br>
                  <h4 class="card-title" style="text-align: left; margin-top: 20px; margin-bottom: 20px; font-size: 40px"><%=cinfo.getCocktail_id() %></h4>
                  <p class="card-title" style="color: #ffffff; font-size: 30px">도수: <%=cinfo.getAlc_Vol() %></p>
                    <p class="card-title" style="color: #ffffff; font-size: 30px">베이스: <%=cinfo.getBase() %></p>
                    <p class="card-title" style="color: #ffffff; font-size: 30px">맛: <%=cinfo.getFlavor() %></p>
                    <br>
                    <br> 
                    <div class="card bg-light mb-3" style="font-family: COOKIERUN;">
                    <h4 class="card-title " style="color: black; font-size: 40px">MOODTAIL'S MESSAGE</h4>
                    <p class="card-text" id="crecomend" style="color: black; font-size: 30px"><%=cinfo.getEmotional_len() %></p>
                    </div>
              </div>
            </div>
            <div class="b">
            </div>
          </div>
        <div  style="font-family: COOKIERUN; margin-left: 25%;">
          <div>
            <h2>유래</h2>
            <p style="color: #ffffff; max-width: 70%"><%=cinfo.getCocktail_his() %></p>
          </div>
          <br>
          <br>
          <div style="font-family: COOKIERUN; max-width: 70%">
            <h2><%=cinfo.getCocktail_id() %> 칵테일 레시피</h2>
            <p>재료</p>
            <p style="color: #ffffff;"><%=cinfo.getIngredient() %></p>
            <p>레시피</p>
            <p style="color: #ffffff; margin-bottom: 100px"><%=cinfo.getRecipe() %></p>
          </div>
        </div>
        <div>
          
        </div>

            </div>
          </div>

      </div>
   </div>
   </main>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./js/jquery-3.6.0.min.js"></script>
	
  </body>
</html>
