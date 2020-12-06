<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8" />
<meta name="description" content="Foodeiblog Template" />
<meta name="keywords" content="Foodeiblog, unica, creative, html" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Hansung</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400,600,700,800,900&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Unna:400,700&display=swap"
	rel="stylesheet" />

<!-- Css Styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/elegant-icons.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slicknav.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css" />
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">
		<div class="humberger__menu__logo">
			<a href="./index.html"><img
				src="${pageContext.request.contextPath}/resources/img/humberger/hero-bg.png"
				alt="" /></a>
		</div>
		<nav class="humberger__menu__nav mobile-menu">
			<ul>
				<li><a href="./index.html"></a></li>
				<li><a href="${pageContext.request.contextPath }/classes">학기별
						수강신청 조회 </a></li>
				<li><a href="${pageContext.request.contextPath }/createclass">수강신청</a></li>
				<li><a
					href="${pageContext.request.contextPath }/certainclass?year=2021&semester=1">수강신청
						내역보기 </a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="humberger__menu__about">
			<div
				class="humberger__menu__about__social sidebar__item__follow__links"></div>
		</div>
		<div class="humberger__menu__subscribe"></div>
	</div>
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-1 col-6 order-md-1 order-1">
						<div class="header__humberger">
							<i class="fa fa-bars humberger__open"></i>
						</div>
					</div>
					<div class="col-lg-8 col-md-10 order-md-2 order-3">
						<nav class="header__menu">
							<ul>
								<li class="active"><a href="./index.html">메인</a></li>
								<li><a href="${pageContext.request.contextPath }/classes">학기별
										수강신청 조회</a></li>
								<li><a
									href="${pageContext.request.contextPath }/createclass">수강신청</a></li>
								<li><a
									href="${pageContext.request.contextPath }/certainclass?year=2021&semester=1">수강신청내역보기
								</a></li>
							</ul>
						</nav>
					</div>
					<div class="col-lg-2 col-md-1 col-6 order-md-3 order-2">
						<div class="header__search">
							<i class="fa fa-search search-switch"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="header__btn">
						<c:if test="${pageContext.request.userPrincipal.name != null}">

							<c:url var="logoutUrl" value="/logout" />

							<form class="form-inline" action="${logoutUrl}" method="post">
								<input type="submit" value="Log out" /> <input type="hidden"
									name="${_csrf.parameterName}" value="${_csrf.token}" />
							</form>

						</c:if>

					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="header__logo">
						<a href="${pageContext.request.contextPath }/index"><img
							src="${pageContext.request.contextPath}/resources/img/humberger/hero-bg.png"
							alt="" /></a>
					</div>
				</div>

			</div>
		</div>
	</header>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero">
		<div class="hero__slider owl-carousel">
			<div class="hero__item">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-6 p-0">
							<div class="hero__inside__item hero__inside__item--wide set-bg"
								data-setbg="${pageContext.request.contextPath}/resources/img/humberger/hero-bg.jpg">

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

	</section>
	<!-- Categories Section End -->




	<!-- Js Plugins -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>
