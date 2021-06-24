<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Cocktail.CocktailDTO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	String durl = "jdbc:oracle:thin:@172.30.1.53:1521:xe";
	String did = "hr";
	String dpw = "hr";
	String sql = "SELECT Alc_Vol, Flavor, Base, Recipe,Ingredient , Cocktail_HIS FROM COCKTAIL WHERE Cocktail_ID = (SELECT ? FROM RESULT)";
%>
    
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
    
    <%
    try {
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
    %>
<main>
    <h1>칵테일 정보 더보기</h1>
    
    <br>

    <div class="container py-4">
        <div class="row align-items-md-stretch">
          <div class="col-md-6 card border-primary mb-3">
              <div style="margin-top: 20px;">
            <div class="card-header"><h2>칵테일 정보</h2></div>
                <div class="card-body">
                <% if(rs.next()) { %>
                    <h4 class="card-title">도수</h4>
                    <p class="card-text"><%= rs.getInt(1) %></p>
                    <h4 class="card-title">맛</h4>
                    <p class="card-text"><%= rs.getString(3) %></p>
                    <h4 class="card-title">베이스</h4>
                    <p class="card-text"><%= rs.getString(2) %></p>
                </div>
            </div>
          </div>
          <div class="col-md-6 card border-info mb-3">
            <div style="margin-top: 20px;">
            <div class="card-header"><h2>칵테일 레시피</h2></div>
                <div class="card-body">
                    <h4 class="card-title">재료</h4>
                    <p class="card-text"><%= rs.getString(4) %></p>
                    <h4 class="card-title">레시피</h4>
                    <p class="card-text"><%= rs.getString(5) %></p>
                    
                </div>
            </div>
        </div>

        <div class="card bg-light mb-3">
            <div class="container-fluid py-5 text-primary">
              <h2 class="display-5 fw-bold">유래</h2>
              <p class="col-md-8 fs-4"><%= rs.getString(6) %></p>
              <% }
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		try{
			if(rs != null){
				rs.close();
			}
			if(psmt != null){
				psmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	} %>
            </div>
          </div>
		</div>
	</div>
	</main>
	

<script src="./js/jquery-3.6.0.min.js"></script>
<script>

</script>

    
  </body>
</html>
