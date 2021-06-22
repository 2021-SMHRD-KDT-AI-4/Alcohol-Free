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
      }
    </style>

  </head>
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
                <a class="nav-link" href="Login.jsp">Login</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Mypage.jsp">Mypage</a>
              </li>
            </ul>
            <form class="d-flex" action="Serch_Service" method="post">>
              <input class="form-control me-sm-2" type="text" placeholder="Search">
              <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>

<div class="container">
  <main>
    <div class="py-5 text-center">
      
      <h2>ȸ������</h2>
      <p class="lead">ȸ�����Կ� �ʿ��� ������ �ۼ����ּ���.</p>
    </div>

    <div id="join_form" class="col-md-7 col-lg-8">
        <form class="needs-validation" action="Join_Service" method="post" novalidate>
          <div class="row g-3">
            <div class="col-12">
              <label for="ID" class="form-label">���̵�</label>
              <input type="text" class="form-control" placeholder="���̵� �Է��ϼ���." name="ID" id="ID" style="margin-bottom: 10px;">
              <input id="ID_btn" type="button" class="btn btn-light" value="ID�ߺ� üũ">
            </div>

            <div class="col-12">
              <label for="PW" class="form-label">��й�ȣ</label>
              <div class="input-group has-validation">
                <input type="password" class="form-control" placeholder="��й�ȣ�� �Է��ϼ���." name="PW" id="PW">
              </div>
            </div>

            <div class="col-12">
              <label for="name" class="form-label">�̸�</label>
              <input type="text" class="form-control" placeholder="�̸��� �Է��ϼ���." name="NAME" id="NAME">
            </div>

            <div class="col-12">
                <label for="genader" class="form-label">����</label>
                <select class="form-select" name="GENDER" id="GENDER" required>
                  <option value="F">����</option>
                  <option value="M">����</option>
                </select>
              </div>

            <div class="col-12">
              <label for="age" class="form-label">����</label>
              <input type="text" class="form-control" placeholder="���̸� �Է��ϼ���." name="AGE" id="AGE">
            </div>

            <div class="col-md-6">
              <label for="alcohol_type" class="form-label">��ȣ�ϴ� ����</label>
              <input type="text" class="form-control" placeholder="��ȣ�ϴ� ������ �Է��ϼ���." name="ALCOHOL_TYPE" id="ALCOHOL_TYPE">
            </div>

            <div class="col-md-6">
              <label for="alcohol_capacity" class="form-label">�ַ�</label>
              <input type="text" class="form-control" placeholder="�ַ��� �����ּ���." name="ALCOHOL_CAPACITY" id="ALCOHOL_CAPACITY">
            </div>

            <div class="col-12">
                <label for="flavor" class="form-label">��ȣ�ϴ� ��</label>
                <select class="form-select" id="FLAVOR" required>
                  <option value="Sweet">�ܸ�</option>
                  <option value="Strong">���Ѹ�</option>
                  <option value="Minty">�����Ѹ�</option>
                  <option value="Sour">�Ÿ�</option>
                  <option value="Bitter">����</option>
                </select>
              </div>
          	<input class="w-100 btn btn-primary btn-lg" type="submit" value="ȸ�� ���� �ϱ�">
        </div>
        </form>
    </div>
 </main>
 </div>




    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      <script src="form-validation.js"></script>
  </body>
</html>
