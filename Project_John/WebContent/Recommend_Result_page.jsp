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
      #wish_btn{
         position: fixed;
         top:200px;
       	right:0px;
      }
      div#d4{
         text-align: center;
      }
     
      div.left {
        margin-top: 10%;
        width: 30%;
        margin-left: 20%;

    }
    div.right {
        margin-left: 35%; 
        
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
<body style="font-family: COOKIERUN;">
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
        </ul>
        
      </div>
    </div>
  </nav>
 <%
 
 String pre = request.getParameter("data");
 
  
 String[] split_pre =pre.split("/");  
 String a1 = split_pre[1];
   String [] b1 = a1.split(",");
   String user_id = b1[0];
   String b2 = b1[1];
   String [] c1 = b2.split("z");
   String a_1 = c1[0];
   String c2 = c1[1];
   String [] d1 = c2.split("N");
   String result1 = d1[0];
   
   String result = result1.trim();
   System.out.println(user_id);
   System.out.println(a_1);
   System.out.println(result);  
   ResultDAO rdao = new ResultDAO();
   ResultDTO rdto = new ResultDTO(user_id,a_1,result);
   int cnt = rdao.result_insert(rdto);
   
   CocktailDAO dao = new CocktailDAO();   
   CocktailDTO cinfo = dao.C_Info(result);
   
   WishlistDAO wdao = new WishlistDAO();
   WishlistDTO wdto = new WishlistDTO(user_id,a_1,result);
   
   
%>

    <main>
    <form action="Wishlist_Service">   
     <input  id="user_id" type="hidden" value="<%=user_id%>" style="width: 150px">
     <input  id="a_1" type="hidden" value="<%=a_1%>" style="width: 150px" >
     <input  id="cocktail_id" type="hidden" value="<%=cinfo.getCocktail_id()%>" style="width: 150px" >
     </form>
      <input class="btn btn-light" id="wish_btn" type="button" value="찜하기" style="width: 150px" onclick="wishlist()">
        <div class="container py-4">
            
         
            <div class="row align-items-md-stretch" style="margin-top: 148px;">
              <div class="card-header text-light" style="font-family: COOKIERUN; margin-bottom: 50px"><h1>오늘 하루도 수고한 나에게 어울리는 칵테일은?</h1></div>
              
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
   <script>

    function wishlist(){
        var user_id = $("#user_id").val();
        var cocktail_id = $("#cocktail_id").val();
        var a_1 = $("#a_1").val();
      $.ajax({
         type : "post",  //데이터 전송 방식 
         data :  {"cocktail_id":cocktail_id,
            "user_id":user_id,
            "a_1":a_1} ,
         url : "Wishlist_Service", // 서버 파일 이름 
         dataType : "text", // 서버에서 오는 응답방식  
         success : function(data){
            alert("찜되었습니다!");               
         },
         error :function(){
            alert("실패!");
         }
      })
   }
   
   
/*    $('#Recomend').on('click', function(){

    
   }); */
   

   </script>
      
  </body>
</html>