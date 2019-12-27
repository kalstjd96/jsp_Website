<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 폼</title>
<link rel="stylesheet" type="text/css" href="style1.css" />
<style>

</style>
<!-- 초기화 -->
<style>
* {
	margin: 0;
	padding: 0;
	font-family: '맑은 고딕', 'Malgun Gothic', Gothic, sans-serif;
}

a {
	text-decoration: none;
}

li {
	list-style: none;
}
</style>
<!-- 기본 클래스 -->
<style>
.pull-left {
	float: left;
}

.pull-right {
	float: right;
}
</style>
<!-- 페이지 -->
<style>
.body {
	width: 960px;
	margin: 0 auto;
	
}

#page-wrapper {
	background: #CEF6F5;
	margin: 40px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}
</style>
<!-- 헤더 -->
<style>
#main-header {
	padding: 40px 50px;
}

.master-title {
	font-size: 30px;
	color: #181818;
	
}

.master-description {
	font-size: 15px;
	font-weight: 500;
	color: #383838;
}
</style>
<!-- 네비게이션 -->
<style>
#main-navigation {
	border-top: 1px solid #C8C8C8;
	border-bottom: 1px solid #C8C8C8;
	margin-bottom: 20px;
	height: 40px;
}

.outer-menu-item {
	float: left;
	position: relative;
}

.outer-menu-item:hover {
	background: black;
	color: white
}

.menu-title {
	display: block;
	height: 30px;
	line-height: 30px;
	text-align: center;
	padding: 5px 20px;
}

.inner-menu {
	display: none;
	position: absolute;
	top: 40px;
	left: 0;
	width: 100%;
	background: white;
	box-shadow: 0 2px 6px rgba(5, 5, 5, 0.9);
	z-index: 1000;
	text-align: center
}

.inner-menu-item>a {
	display: block;
	padding: 5px 10px;
	color: black
}

.inner-menu-item>a:hover {
	background: black;
	color: white;
}
</style>
<!-- 네비게이션 내부의 검색 -->
<style>
.search-bar {
	height: 26px;
	padding: 7px;
}

.input-search {
	display: block;
	float: left;
	background-color: #FFFFFF;
	border: 1px solid #CCCCCC;
	border-radius: 15px 0 0 15px;
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
	width: 120px;
	height: 24px;
	padding: 0 0 0 10px;
	font-size: 12px;
	color: #555555;
}

.input-search:focus {
	border-color: rgba(82, 168, 236, 0.8);
	outline: 0;
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}

.input-search-submit {
	display: block;
	float: left;
	width: 50px;
	height: 26px;
	border-radius: 0 15px 15px 0;
	border: 1px solid #CCCCCC;
	margin-left: -1px;
	vertical-align: top;
	display: inline-block;
}
</style>
<!-- 중앙 내용 -->
<style>
/* body 태그의 너비: 960픽셀 */
/* #page-wrapper 태그의 padding 속성으로 내용물 너비는 920픽셀 */
#content {
	overflow: hidden;
}

#main-section {
	float: left;
	width: 710px;
}

#main-aside {
	float: right;
	width: 200px;
}
</style>
<!-- 좌측 내용물 -->
<style>
article {
	padding: 0 10px 20px 10px;
	border-bottom: 1px solid #C8C8C8;
}

.article-header {
	padding: 20px 0;
}

.article-title {
	font-size: 25px;
	font-weight: 500;
	padding-bottom: 10px;
	
}

.article-date {
	font-size: 13px;
}

.article-body {
	font-size: 14px;
	background-image:url('img/image1.PNG');
	
	
}
</style>
<!-- 우측 구성 -->
<style>
.aside-list {
	padding: 10px 0 30px 0;
}

.aside-list>h3 {
	font-size: 15px;
	font-weight: 600;
}

.aside-list li a {
	margin-left: 8px;
	font-size: 13px;
	color: #6C6C6C;
}
</style>
<script></script>
<script></script>
</head>
<body>
	<div id="page-wrapper">
		<header id="main-header"> <hgroup>
		<h1 class="master-title">과제</h1>
		<h2 class="master-description"></h2>
		</hgroup> </header>
		<nav id="main-navigation">
		<div class="pull-left">
			<ul class="outer-menu">
				<li class="outer-menu-item"><span class="menu-title">중간고사</span>
				<li class="outer-menu-item"><span class="menu-title">기말고사</span>
				<li class="outer-menu-item"><span class="menu-title">진단평가</span>
				<li class="outer-menu-item"><span class="menu-title">공유게시판</span>
				<li class="outer-menu-item"><span class="menu-title"><a href="IDfind.jsp">ID/비번찾기  </a></li></span>
				<li class="outer-menu-item"><span class="menu-title"><a href="Newmember.jsp">회원가입</a></span>	
			</ul>
			
		</div>
		<div class="pull-right">
			<div class="search-bar">
				<form>
					<h2><li class="outer-menu-item"><strong><a href="loginForm.jsp">로그인 </a></strong></li></h2>				
				</form>
			</div>
		
		</nav>
		<div id="content">
	
			<section id="main-section"> <article>
			<div class="form0">			
			<div class="article-header">
			
				<h1 class="article-title">Hot Game</h1>
				<p class="article-date">배틀그라운드</p>
			</div>
			<div class="article-body">
			<iframe width="560" height="315" src="https://www.youtube.com/embed/89WKw2heJ0U" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
				
			</div>
			</div>
			</article> <article>
			<div class="article-header">
				<h1 class="article-title">비인기게임</h1>
				<p class="article-date">쿠키런</p>
			</div>
			<div class="article-body">
				<img src="img/image5.jpg" /> <br /> <br />
				<p></p>
			</div>
			</article> </section>
			<aside id="main-aside">
				<div class="aside-list">
					<h3>카테고리</h3>
					<ul>
						<li><a href="#">기말고사</a></li>
						<li><a href="#">방학</a></li>
						<li><a href="#">휴식</a></li>
						<li><a href="#">알바</a></li>
						<li><a href="#">놀자</a></li>
					</ul>
				</div>
				<div class="aside-list">
					<h3>최근 글</h3>
					<ul>
						<li><a href="#">데이터</a></li>
						<li><a href="#">데이터</a></li>
						<li><a href="#">데이터</a></li>
						<li><a href="#">데이터</a></li>
					</ul>
				</div>
			</aside>
		</div>
		<footer id="main-footer"> <a href="#">Created By
			Team-HeXagon</a> </footer>
	</div>
	</div>
	
</body>
</html>