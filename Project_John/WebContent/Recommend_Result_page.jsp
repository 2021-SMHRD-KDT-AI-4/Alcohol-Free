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
      <input class="btn btn-light" id="wish_btn" type="button" value="���ϱ�" style="width: 150px" onclick="wishlist()">
        <div class="container py-4">
            
			
            <div class="row align-items-md-stretch" style="margin-top: 148px;">
              <div class="col-md-6">
                  <div style="margin-top: 20px;">
                <div class="card-header"></div>
                    <div class="card-body" id="cimg">
                     <img src="<%=cinfo.getCocktail_IMG()%>"> 
                    </div>
                </div>
              </div>
              <div class="col-md-6 card border-info mb-3">
                <div style="margin-top: 20px;">
                <div class="card-header"><h2>������ Ĭ����</h2></div>
                
                <br>
                <br>
                    <div class="card-body">
                        <h4 class="card-title" ><%=cinfo.getCocktail_id() %></h4>
                        <p class="card-text" id="cname"></p>
                        <br>
                        <h4 class="card-title"><%=cinfo.getEmotional_len() %></h4>
                        <p class="card-text" id="crecomend"></p>
                    </div>
                </div>
            </div>
            </div>
            <div class="b">
            </div>
          </div>
          
          <br>
           <h1>Ĭ���� ���� ������</h1>
    
    <br>

    <div class="container py-4">
        <div class="row align-items-md-stretch">
          <div class="col-md-6 card border-primary mb-3">
              <div >
            <div class="card-header"><h2>Ĭ���� ����</h2></div>
                <div class="card-body">
                    <h4 class="card-title">����</h4>
                    <p class="card-text" id="avol"><%=cinfo.getAlc_Vol() %></p>
                    <h4 class="card-title">���̽�</h4>
                    <p class="card-text" id="base"><%=cinfo.getBase() %></p>
                    <h4 class="card-title">��</h4>
                    <p class="card-text" id="flavor"><%=cinfo.getFlavor() %></p>
                </div>
            </div>
          </div>
          <div class="col-md-6 card border-info mb-3">
            <div style="margin-top: 20px;">
            <div class="card-header"><h2>Ĭ���� ������</h2></div>
                <div class="card-body">
                    <h4 class="card-title">���</h4>
                    <p class="card-text" id="ci"><%=cinfo.getIngredient() %></p>
                    <h4 class="card-title">������</h4>
                    <p class="card-text" id="rec"><%=cinfo.getRecipe() %></p>
                    
                </div>
            </div>
        </div>

        <div class="card bg-light mb-3">
            <div class="container-fluid py-5 text-primary" >
              <h2 class="display-5 fw-bold">����</h2>
              <div id="d4">
              <p class="col-md-8 fs-4" id="his" style="margin-left: 15%"><%=cinfo.getCocktail_his() %></p>
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
			type : "post",  //������ ���� ��� 
			data :  {"cocktail_id":cocktail_id,
				"user_id":user_id,
				"a_1":a_1} ,
			url : "Wishlist_Service", // ���� ���� �̸� 
			dataType : "text", // �������� ���� ������  
			success : function(data){
				alert("��Ǿ����ϴ�!");					
			},
			error :function(){
				alert("����!");
			}
		})
	}
	
   
/* 	$('#Recomend').on('click', function(){

    
	}); */
	

	</script>
      
  </body>
</html>
