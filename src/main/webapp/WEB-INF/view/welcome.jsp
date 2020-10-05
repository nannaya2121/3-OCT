<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Talk-to-Talk</title>


</head>
<body>

<!-- 시작화면 -->
<!-- 주의!!!!!!!!!!!! choose태그 안에 주석달면 에러남!!!!!!!!!!! -->

	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">

			<div role="navigation">
				<div class="navbar navbar-inverse">
					<a href="/welcome" class="navbar-brand">Talk-to-Talk</a>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="/logging">로그인</a></li>
							<li><a href="/regist">회원가입</a></li>
						</ul>
					</div>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_REGIST'}">
			<div role="navigation">
				<div class="navbar navbar-inverse">
					<a href="/welcome" class="navbar-brand">Talk-to-Talk</a>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="/logging">로그인</a></li>
							<li><a href="/regist">회원가입</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="container text-center">
				<h2>회원가입</h2>
				<hr>
				<form class="form-horizontal" action="save-user" method="post">
					<input type="hidden" name="id" value="${user.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">아이디</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="userid"
								value="${user.userid}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">비밀번호</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password}">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">이메일</label>
						<div class="col-md-7">
							<input type="email" class="form-control" name="email"
								value="${user.email}">
						</div>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="가입하기" />
					</div>
				</form>
			</div>
		</c:when>
		
		<c:when test="${mode=='MODE_LOGIN'}">

			<div role="navigation">
				<div class="navbar navbar-inverse">
					<a href="/welcome" class="navbar-brand">Talk-to-Talk</a>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="/logging">로그인</a></li>
							<li><a href="/regist">회원가입</a></li>
						</ul>
					</div>
				</div>
			</div>
			
			<div class="container text-center">
				<h2>로그인</h2>
				<hr>
				<form class="form-horizontal" action="list" method="post">
					<input type="hidden" name="id" value="${user.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">아이디</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="userid"
								value="${user.userid}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">비밀번호</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password}">
						</div>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="로그인" />
					</div>
				</form>
			</div>
		</c:when>
		
		<c:when test="${mode=='MODE_LIST'}">
			<div role="navigation">
				<div class="navbar navbar-inverse">
					<a href="/welcome" class="navbar-brand">Talk-to-Talk</a>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="/logging">로그인</a></li>
							<li><a href="/regist">회원가입</a></li>
						</ul>
					</div>
				</div>
			</div>
			<h2>로그인하셨어요!</h2>
		</c:when>
		
	</c:choose>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>