<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="webjars/jquery/3.5.1/jquery.min.js"></script>
		
		 <!-- Bootstrap core CSS -->
    <link href="webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">

		<!-- Website CSS style -->
		
		
		<!-- resources css -->
		<link rel="stylesheet" type="text/css" href="resources/signup/signup.css">			
		<!-- resources js -->
		<script type="text/javascript" src="resources/signup/idCheck.js"></script>
		<!-- Website Font style -->
		
		
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>


		
		
	 	
	<!------ Include the above in your HEAD tag ---------->
		<title>회원가입</title>
		 
		
	</head>
	<body style="background-color: #d3d3d3; ">
		<div class="container">
		<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">회원가입</h1>
	               		<hr/>
	               	</div>
	            </div>
			<div class="row main">
				 
				<div class="main-login main-center">
					<form name = "SignUp" class="form-horizontal" action="join.do" method="post">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">이름</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="m_name" id="m_name"  placeholder="이름"/>
								</div>
								<span id="span_name" style="color: red;"></span> 	
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">아이디</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="m_id" id="m_id"  placeholder="아이디(6자리 이상 )"/>
								</div>
									<span id="span_id"></span> 								
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">생년월일</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="date" class="form-control" name="m_date" id="m_date"  placeholder="아름"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">이메일</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="m_email" id="m_email"  placeholder="이메일"/>
								</div>
								<span id="span_email" style="color: red;"></span> 	
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">닉네임</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="m_nickname" id="m_nickname"  placeholder="닉네임"/>
								</div>
								<span id="span_nick" style="color: red;"></span>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">비밀번호</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="m_pw" id="m_pw"  placeholder="비밀번호(8자리 이상)"/>
								</div>
								<span id="pw_len" style="color: red"></span>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">비밀번호 확인</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" id="pw"  placeholder="비밀번호 확인"/>
								</div>
								<span id="pw_ok" style="color: red;"></span>
							</div>
						</div>
						

						<div class="form-group ">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button" id="submit">가입하기</button>
						</div>
					<!-- 	<div class="login-register">
				            <a href="../main/main.jsp">홈</a>
				         </div> -->
					</form>
						<div class="login-register">
				            <a href="../login/login.jsp">로그인</a>
				         </div>
				</div>
			</div>
		</div>

		<script type="text/javascript" src="webjars/bootstrap/4.6.0/js/bootstrap.js"></script>
		</body>
		
		<!-- script -->
		<!-- idcheck -->		
		<script type="text/javascript" src="/livingAloneMaster/jsp/join/idCheck.js"></script>

</html>