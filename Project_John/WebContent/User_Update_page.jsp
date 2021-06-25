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
    <title>UPDATE</title>

    <link rel="stylesheet" href="css/bootstrap.css">

    <style>
      div#join_form{
        margin: auto;
      }
      div.container{
          margin-top: 11%;
          margin-bottom: 11%;
      }
    </style>
  </head>
  <body class="bg-light">
    <br>
 <% MemberDTO info = (MemberDTO) session.getAttribute("info");  %>
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
               <%if(info!= null) {%>
                 
                  <li class="nav-item">
                    <a class="nav-link" href="LogoutService">Logout</a>
                  </li>
                  <li class="nav-item">
                <a class="nav-link" href="My_page.jsp">Mypage</a>
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

  <div class="container">
    <main>
      <div class="py-5 text-center">
       
        <h2>ȸ�� ���� ����</h2>
        <p class="lead">������ ȸ�� ID:<%= info.getId() %></p>
      </div>

      <div id="join_form" class="col-md-7 col-lg-8">
          <form class="needs-validation" action="Update_Service" method="post" novalidate>
            <div class="row g-3">
              
              <div class="col-12">
                <label for="PW" class="form-label">��й�ȣ</label>
                <div class="input-group has-validation">
                  <input type="password" class="form-control" placeholder="��й�ȣ�� �Է��ϼ���." id="PW" name="PW">
                </div>
              </div>

              <div class="col-md-6">
                <label for="alcohol_type" class="form-label">��ȣ�ϴ� ����</label>
                <input type="text" class="form-control" placeholder="��ȣ�ϴ� ������ �Է��ϼ���." id="ALCOHOL_TYPE" name="ALCOHOL_TYPE">
              </div>

              <div class="col-md-6">
                <label for="alcohol_capacity" class="form-label">�ַ�</label>
                <input type="text" class="form-control" placeholder="�ַ��� �����ּ���." id="ALCOHOL_CAPACITY" name="ALCOHOL_CAPACITY">
              </div>

              <div class="col-12">
                  <label for="flavor" class="form-label">��ȣ�ϴ� ��</label>
                  <select class="form-select" id="FLAVOR" name="FLAVOR" required>
                    <option value="�ܸ�">�ܸ�</option>
                    <option value="�ణ �ܸ�">�ణ �ܸ�</option>
                    <option value="������ ��">������ ��</option>
                    <option value="�Ÿ�">�Ÿ�</option>
                    <option value="�ణ ���Ѹ�">�ణ ���Ѹ�</option>
                  </select>
                </div>

            <input class="w-100 btn btn-primary btn-lg" type="submit" value="���� ���� �Ϸ�">
          </div>
          </form>
          </div>
    	</main>
	</div>



    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      <script src="form-validation.js"></script>
  </body>
</html>
