<%@page import="Cocktail.MemberDTO"%>
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
    <title>JOIN</title>

    <link rel="stylesheet" href="css/bootstrap.css">

    <style>
      div#join_form{
          margin: auto;
      }    div.container-fluid {
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
          <li class="nav-item">
            <a class="nav-link" href="Login_page.jsp">Login</a>
          </li>

        </ul>
        
      </div>
    </div>
  </nav>


<div class="container">
  <main>
    <div class="py-5 text-center">
      
      <h2>????????</h2>
      <p class="lead">?????????? ?????? ?????? ????????????.</p>
    </div>

    <div id="join_form" class="col-md-7 col-lg-8">
        <form class="needs-validation" action="Join_Service" method="post" novalidate>
          <div class="row g-3">
            <div class="col-12">
              <label for="ID" class="form-label">??????</label>
              <input type="text" class="form-control" placeholder="???????? ??????????." name="ID" id="ID" style="margin-bottom: 10px;">
              <input id="ID_btn" type="button" class="btn btn-light" value="ID???? ????" onclick="idCheck()">
              <span id="sp1"></span>
            </div>

            <div class="col-12">
              <label for="PW" class="form-label">????????</label>
              <div class="input-group has-validation">
                <input type="password" class="form-control" placeholder="?????????? ??????????." name="PW" id="PW">
              </div>
            </div>

            <div class="col-12">
              <label for="name" class="form-label">????</label>
              <input type="text" class="form-control" placeholder="?????? ??????????." name="NAME" id="NAME">
            </div>

            <div class="col-12">
                <label for="genader" class="form-label">????</label>
                <select class="form-select" name="GENDER" id="GENDER" required>
                  <option value="F">????</option>
                  <option value="M">????</option>
                </select>
              </div>

            <div class="col-12">
              <label for="age" class="form-label">????</label>
              <input type="text" class="form-control" placeholder="?????? ??????????." name="AGE" id="AGE">
            </div>

            <div class="col-md-6">
              <label for="alcohol_type" class="form-label">???????? ????</label>
              <input type="text" class="form-control" placeholder="???????? ?????? ??????????." name="ALCOHOL_TYPE" id="ALCOHOL_TYPE">
            </div>

            <div class="col-md-6">
              <label for="alcohol_capacity" class="form-label">????(???? ???? ?? ?? ????)</label>
              <input type="text" class="form-control" placeholder="?????? ??????????." name="ALCOHOL_CAPACITY" id="ALCOHOL_CAPACITY">
            </div>

            <div class="col-12">
                <label for="flavor" class="form-label">???????? ??</label>
                <select class="form-select" id="FLAVOR" name="FLAVOR" required>
                  <option value="????">????</option>
                  <option value="???? ????">???? ????</option>
                  <option value="???? ??????">???? ??????</option>
                  <option value="?????? ??">????????</option>
                  <option value="????">????</option>
                </select>
              </div>
          	<input class="w-100 btn btn-light btn-lg" type="submit" value="???? ???? ????">
        </div>
        </form>
    </div>
 </main>
 </div>




    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
      <script src="form-validation.js"></script>
      <script src="./js/jquery-3.6.0.min.js"></script>
      <script>
				function idCheck(){
					var input = $('#ID').val();
					$.ajax({
						type:"post", 			
						data: {"ID": input}, 	
						url: "IdCheck_Service",	
						dataType: "text",		
						success: function(data) {
							
							if(data=='true'){
								$('#sp1').html("???????? ID??????.");
							}else{
								$('#sp1').html("?????? ID??????.");								
							}
						},
						error: function() {
							alert("????!");
						}
					});
				}
			</script>
  </body>
</html>
