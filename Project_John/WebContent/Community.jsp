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
    </style>

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


    <br>
    <br>
    <br>
    <h1>����� ���� ����</h1>
    
    <br>

    <div class="container py-4" style="margin: auto;">
        <div class="row mb-2">
            <div class="col-md-6 card border-info mb-3" style="width: 45%;">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                <table>
                    <tr>
                        <td width="20%"><span id="board_num">1</span></td>
                        
                        <td >�������� ����</td>
                    </tr>
                    <tr >
                        <td colspan="2" >�̹���</td>
                    </tr>
                    <tr >
                        <td colspan="2" >���䳻��</td>
                    </tr>
                    <tr>
                        <td width="250" align="right" colspan="2">
                        	
                        	<span id="like_result"></span>
                            <input class="btn btn-light" id="like_btn" type="button" value="���ƿ�" onclick="like()">
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="2">
                        <form class="d-flex">
                            <input class="form-control me-sm-2" type="text" placeholder="����� �Է��ϼ���">
                            <input class="btn btn-light" id="write_com" type="button" value="����ۼ�">
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

        <div style="width: 8%;"></div>

            <div class="col-md-6 card border-info mb-3" style="width: 45%;">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                <table>
                    <tr>
                        <td width="20%"></td>
                        <td >�������� ����</td>
                    </tr>
                    <tr >
                        <td colspan="2" >�̹���</td>
                    </tr>
                    <tr >
                        <td colspan="2" >���䳻��</td>
                    </tr>
                    <tr>
                        <td width="250" align="right">
                        	<span id="board_num"></span>
                            <input class="btn btn-light" id="like_btn" type="button" value="���ƿ�" onclick="like()">
                        </td>
                        <td align="left">
                            <span id="like_result"></span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                        <form class="d-flex">
                            <input class="form-control me-sm-2"  placeholder="����� �Է��ϼ���">
                            <input class="btn btn-light" id="write_com" type="button" value="����ۼ�">
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
            </div>
            </div>

        </div>
    </div>
    
    

<script src="./js/jquery-3.6.0.min.js"></script>
<script>

   var num = 1;
   $('#write_com').on('click', function(){
      var com = $('input[type=text]').val();
      $('#comments').append('<li class="com'+num+'">'+com+'<input class="btn btn-light" type="button" value="��ۻ���" onclick="del('+num+')"></li>');
      num++;
      $('input[type=text]').val('');
   });
   
   function del(num){
      $('.com'+num).remove();
   }
   
   function like(){
      if($('#like_btn').val()=="���ƿ�"){
         $.ajax({
            type : "post",
            data : {
               "board_num" : $('#board_num').html()
            },
            url : "Like_Service",
            dataType : "text",
            success : function(data){
               
               $('#like_result').html(data);
               $('#like_btn').val('���ƿ� ���');
            },
            error : function(){
               alert('����!');
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
               $('#like_btn').val('���ƿ�');
            },
            error : function(){
               alert('����!');
            }
         });
      }
   }
   
   var data2 = [];
	/* ��ư ������ �� ����� �Լ� */
	function Recomend(){
		 $.ajax({
		   	 url : 'Recommend_Sevice', /* �����͸� ������ �� ����, JSP �� �ּ� */
		   	 success : function(data){
		   		 alert("����");
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
		     		 alert("����");
		     	 }
		     });
	}
</script>

</body>
</html>