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
          <a class="navbar-brand" href="#">Cocktail</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
      
          <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav me-auto">
              <li class="nav-item">
                <a class="nav-link active" href="#">Home
                  <span class="visually-hidden">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Community</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Login</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Mypage</a>
              </li>
            </ul>
            <form class="d-flex">
              <input class="form-control me-sm-2" type="text" placeholder="Search">
              <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>

<div class="container">
  <main>
    <div class="py-5 text-center">
      
      <h2>회원가입</h2>
      <p class="lead">회원가입에 필요한 정보를 작성해주세요.</p>
    </div>

    <div id="join_form" class="col-md-7 col-lg-8">
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-12">
              <label for="ID" class="form-label">아이디</label>
              <input type="text" class="form-control" placeholder="아이디를 입력하세요." id="ID" _mstplaceholder="21193315" style="margin-bottom: 10px;">
              <input id="ID_btn" type="button" class="btn btn-light" value="ID중복 체크">
            </div>

            <div class="col-12">
              <label for="PW" class="form-label">비밀번호</label>
              <div class="input-group has-validation">
                <input type="password" class="form-control" placeholder="비밀번호를 입력하세요." id="PW" _mstplaceholder="21193315">
              </div>
            </div>

            <div class="col-12">
              <label for="name" class="form-label">이름</label>
              <input type="text" class="form-control" placeholder="이름을 입력하세요." id="NAME" _mstplaceholder="21193315">
            </div>

            <div class="col-12">
                <label for="genader" class="form-label">성별</label>
                <select class="form-select" id="GENDER" required>
                  <option value=""Choose>여자</option>
                  <option>남자</option>
                </select>
              </div>

            <div class="col-12">
              <label for="age" class="form-label">나이</label>
              <input type="text" class="form-control" placeholder="나이를 입력하세요." id="AGE" _mstplaceholder="21193315">
            </div>

            <div class="col-md-6">
              <label for="alcohol_type" class="form-label">선호하는 주종</label>
              <input type="text" class="form-control" placeholder="선호하는 주종을 입력하세요." id="ALCOHOL_TYPE" _mstplaceholder="21193315">
            </div>

            <div class="col-md-6">
              <label for="alcohol_capacity" class="form-label">주량</label>
              <input type="text" class="form-control" placeholder="주량을 적어주세요." id="ALCOHOL_CAPACITY" _mstplaceholder="21193315">
            </div>

            <div class="col-12">
                <label for="flavor" class="form-label">선호하는 맛</label>
                <select class="form-select" id="FLAVOR" required>
                  <option value=""Choose>단맛</option>
                  <option>독한맛</option>
                  <option>상쾌한맛</option>
                  <option>신맛</option>
                  <option>쓴맛</option>
                </select>
              </div>

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" type="submit">회원 가입 하기</button>
        </form>
      </div>
    </div>
  </main>

</div>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      <script src="form-validation.js"></script>
  </body>
</html>
