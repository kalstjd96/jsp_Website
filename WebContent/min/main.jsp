<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원인증</title>
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
body{
	background-image:url('img/images6.jpg');
	margin: 10px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}

input[type="submit"] {
	height: 30px;
	background: gray;
	border-radius: 5px;
	/*  width: 140px; */
	font-family: "맑은 고딕";
	margin-top: 10px;
	margin-right: 20px;
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
		<h2 class="master-description"><%=session.getAttribute("loginUser")%>관리자님<br> 안녕하세요<br></h2>
		</hgroup> </header>
		<nav id="main-navigation">
		<div class="pull-left">
			<ul class="outer-menu">
				<li class="outer-menu-item"><span class="menu-title">jsp서적</span>
					<ul class="inner-menu">
						<li class="inner-menu-item"><a href="#">데이터</a></li>
						<li class="inner-menu-item"><a href="#">데이터</a></li>
					</ul></li>
				<li class="outer-menu-item"><span class="menu-title">모바일서적</span>
					<ul class="inner-menu">
						
					</ul></li>
				<li class="outer-menu-item"><span class="menu-title">공유게시판</span></li>
				<li class="outer-menu-item"><span class="menu-title"><a href="Memberlist.jsp">회원관리</a></span></li>
				<li class="outer-menu-item"><span class="menu-title"><a href="retouch.jsp">정보수정</a></span></li>
				<li class="outer-menu-item"><span class="menu-title"><a href="delete.jsp">회원탈퇴</a></span></li>
				<li class="outer-menu-item"><span class="menu-title"><a href="logout.jsp">로그아웃</a></span></li>
			</ul>	
		</div>
		</nav>
		<div id="content">
	
			<section id="main-section"> <article>
			
			<div class="article-header">
				<h1 class="article-title"></h1>
			</div>
			
			<div class="article-body">
			<img src="img/images9.JPG"/>
			</div>
			</article> 
		 </section>
		</div>
		<footer id="main-footer"> <a href="#">관리자: 김민성 <br>문의사항: www.naver.com</a> </footer>
	</div>
	<%
if(session.getAttribute("loginUser")==null){
response.sendRedirect("main.jsp");
}else{
%>
	<%}

%>
</body>
</html>