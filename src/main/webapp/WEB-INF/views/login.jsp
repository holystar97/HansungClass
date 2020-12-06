<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" ; content=text/html; charset="UTF-8">
<meta name="viewport" content="width=device-width" ,initial-scale="1">
<link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.css">
<title>Hansung_Login</title>
</head>
<body style="background-color: #585858">
	<nav style="background-color: #6E6E6E">
		<div style="background-color: #585858" class="navbar-header">
			<a style="color: white" class="navbar-brand"
				href="${contextPath}/index">HANSUNG CLASS</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="${contextPath}/index">메인 </a></li>
			</ul>
		</div>
	</nav>
	<div class="container" style="padding-top: 60px">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="<c:url value="login"/>">
					<h3 style="text-align: center;">로그인</h3>
					<c:if test="${not empty errorMsg}">
						<div style="color: #ff0000">
							<h4>${errorMsg}</h4>
						</div>
					</c:if>
					<c:if test="${not empty logoutMsg}">
						<div style="color: #0000ff">
							<h4>${logoutMsg}</h4>
						</div>
					</c:if>

					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디 "
							id="username" name="username" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							id="password" name="password" maxlength="20">
					</div>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <input type="submit"
						class="btn btn-primary form-control" value="로그인"/>
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.js"></script>
</body>
</html>