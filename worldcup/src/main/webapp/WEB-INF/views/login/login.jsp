<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="resources/bootstrap/favicon.ico">

    <title>Floating labels example for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/login/floating-labels.css" rel="stylesheet">
  </head>

  <body>
    <form method="post" class="form-signin" name="login" action="loginOk.do" > 
      <div class="text-center mb-4">
      	
        <h1 class="h3 mb-3 font-weight-normal"><a href="main.do">이상형 월드컵</a></h1>
      
       <!--  <p>Build form controls with floating labels via the <code>:placeholder-shown</code> pseudo-element. <a href="https://caniuse.com/#feat=css-placeholder-shown">Works in latest Chrome, Safari, and Firefox.</a></p> -->
      </div>

      <div class="form-label-group">
        <input type="email" id="inputEmail" name="m_id" class="form-control" placeholder="Email address" required autofocus>
        <label for="email">아이디</label>
      </div>

      <div class="form-label-group">
        <input type="password" id="inputPassword" name="m_pw" class="form-control" placeholder="Password" required>
        <label for="password">비밀번호</label>
      </div>

      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <div>
         
         
        <c:choose>
			<c:when test="${loginCheck eq 'fail'}">
				<span style="color: red;">아이디 혹은 비밀번호가 옳지 않습니다.</span>
			</c:when>
		</c:choose>
        </div>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2017-2018</p>
    </form>
  </body>
</html>
