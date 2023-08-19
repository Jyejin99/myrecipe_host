<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/login.css">
</head>
<body>
    <main class="form-wrap w-100 m-auto">
        <form action="loginAction.jsp" method="post" class="login-form">
          <a href="index.jsp"><img class="mb-4 logo" src="./img/logo.png" alt="logo"></a>
          <h1 class="h3 mb-3 fw-normal form-title text-center">로그인</h1>
      
          <div class="form-floating">
            <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com">
            <label for="email">Email address</label>
          </div>
          <div class="form-floating">
            <input type="password" class="form-control" id="pw" name="pw" placeholder="Password">
            <label for="pw">Password</label>
          </div>
      
          <div class="checkbox mb-3">

          </div>
          <button class="w-100 btn btn-lg btn-success sign-btn" type="submit">Sign in</button>
          <p class="mt-5 mb-3 text-muted text-center">아직 회원이 아니신가요?<a href="signup.jsp" class="go-sign">회원가입</a></p>
          <a href="index.jsp" class="text-center text-muted back">뒤로가기</a>
        </form>
      </main>
</body>
</html>