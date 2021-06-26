<%@page import="Cocktail.MemberDTO"%>
<%@page import="Cocktail.CommunityDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Cocktail.CommunityDAO"%>
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
    <title>COMMUNITY</title>

    <link rel="stylesheet" href="css/bootstrap.css">

    <style>
        h1{
            text-align: center;
        }
        div#d1{
        	margin-left: 10px;
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


    <br>
    <br>
    <br>
    <h1 style="font-size: 80px">커뮤니티</h1>
    
    <br>
<% CommunityDAO cdao = new CommunityDAO(); 
   ArrayList<CommunityDTO> clist = cdao.community_contents();
   

%>
    <div id="d1" class="container py-4" style="margin-left: 30%">
        <div class="row mb-2">
        <% for(int i=0; i<clist.size(); i++){ %>
            <div class="col-md-6 card border-info mb-3" style="width: 45%;">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                <table style="font-size: 30px">
                    <tr>
                        <td width="20%"><span id="board_num"><%=i+1%></span></td>
                        
                        <td>제목 : <%= clist.get(i).getTITLE()%></td>
                    </tr>
                    <tr >
                        <td colspan="2" style="max-width: 150px; min-height: 150px;"><img  src="img/<%=clist.get(i).getUser_IMG()%>"></td>
                    </tr>
                    <tr >
                        <td colspan="2" ><%=clist.get(i).getPost()%></td>
                        
                    </tr>
                    <tr>
                        <td width="250" align="right" colspan="2">
                        	
                        	<span id="like_result<%=i+1%>"><%= clist.get(i).getLike_Cnt() %></span>
                            <input class="btn btn-danger" id="like_btn" type="button" value="♥" onclick="like()" style="margin-bottom: 5px">
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="2">
                        <form class="d-flex">
                            <input class="form-control me-sm-2" type="text" placeholder="댓글을 입력하세요">
                            <input class="btn btn-light" id="write_com" type="button" value="댓글작성">
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <ul id="comments" style="list-style:none; padding:0"></ul>
                        </td>
                    </tr>
                </table>
                </div>
                <div class="col-auto d-none d-lg-block">
                </div>
            </div>
        </div>
		<%} %>
        <div style="width: 8%;"></div>

            
        </div>
    </div>
    
    

<script src="./js/jquery-3.6.0.min.js"></script>
<script>

   var num = 1;
   $('#write_com').on('click', function(){
      var com = $('input[type=text]').val();
      $('#comments').append('<li class="com'+num+'">'+com+'<input class="btn btn-outline-light" type="button" value="댓글삭제" style="margin-left: 10px" onclick="del('+num+')"></li>');
      num++;
      $('input[type=text]').val('');
   });
   
   function del(num){
      $('.com'+num).remove();
   }
   
   function like(){
	   

		      if($('#like_btn').val()=="♥"){
		         $.ajax({
		            type : "post",
		            data : {
		               "board_num" : $('#board_num').html()
		            },
		            url : "Like_Service",
		            dataType : "text",
		            success : function(data){
		               
		               $('#like_result').html(data);
		               $('#like_btn').val('♡ ');
		            },
		            error : function(){
		               alert('실패!');
		            }
		         });
		      }else{
		         $.ajax({
		            type : "post",
		            data : {
		               "board_num" : $('#board_num').html()
		            },
		            url : "DisLike_Service",
		            dataType : "text",
		            success : function(data){
		               
		               $('#like_result').html(data);
		               $('#like_btn').val('♥');
		            },
		            error : function(){
		               alert('실패!');
		            }
		         });
		      }
		
	
   }
   
//   var data2 = [];
	/* 버튼 눌렀을 때 실행될 함수 */
//	function Recomend(){
//		 $.ajax({
//		   	 url : 'Recommend_Sevice', /* 데이터를 가지고 올 서블릿, JSP 등 주소 */
//		   	 success : function(data){
//		   		 alert("성공");
//		   		 console.log(data);
//		   		 data2 = data;
//		   		 $('div#cimg').append("<img src=" + JIMG +">");
//		   		 $('p#cname').append("<p>"+ JID +"</p>" );
//		   		 $('p#crecomend').append("<p>"+ JLEN +"</p>");
//		   		 $('p#avol').append("<p>"+ JVOL +"</p>");
//		   		 $('p#base').append("<p>"+ JBASE +"</p>");
//	 	  		 $('p#flavor').append("<p>"+ JFLAVOR +"</p>");
//		   		 $('p#ci').append("<p>"+ JINGREDIENT +"</p>");
//		   		 $('p#rec').append("<p>"+ JREC +"</p>");
//		   		 $('p#his').append("<p>"+ JHIS +"</p>");
//		   	 },
//		     	 error : function(){
//		     		 alert("실패");
//		     	 }
//		     });
//	}
</script>

</body>
</html>