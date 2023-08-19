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
    <link rel="stylesheet" href="./css/signup.css">
    <script src=./js/signup.js></script>
</head>
<body>
    <main class="form-signin w-100 m-auto">
        <div class="signup-form text-center">
            <a href="index.jsp"><img class="mb-4 logo" src="./img/logo.png" alt="logo"></a>
            <h1 class="h3 mb-3 fw-normal form-title">회원가입</h1>
            <div class="form-wrap">
                <form action="joinAction.jsp" method="post" class="form-box" id="user">
                    <div class="form-floating">
                        <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com">
                        <label for="email">이메일</label>
                    </div>
                    <div class="form-floating mt-3 nickname">
                        <input type="text" class="form-control" id="nickname" name="name" placeholder="nickname">
                        <label for="nickname">닉네임</label>
                    </div>
                    <div class="form-floating mt-3">
                        <input type="password" class="form-control" id="pw" name="pw" onkeyup="checkpw()" placeholder="password">
                        <label for="pw">비밀번호</label>
                    </div>
                    <div class="form-floating mt-3">
                        <input type="password" class="form-control" id="confirm" name="confirm" onkeyup="checkpw()" placeholder="password-confirm">
                        <label for="pw-confirm">비밀번호 확인</label>
                    </div>
                    <span id="check"></span>
                    <div class="form-floating mt-3">
                        <input type="tel" class="form-control" id="tell" name="tell" placeholder="tel">
                        <label for="tel">전화번호</label>
                    </div>
                    <button type="submit" class="w-100 btn btn-lg btn-success sign-btn">sign-up</button>
                    <a href="index.jsp" class="text-center text-muted back">뒤로가기</a>
                </form>
            </div>
        </div>
    </main>
</body>
</html>