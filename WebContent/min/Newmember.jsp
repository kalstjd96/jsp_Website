<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>회원가입</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<style>
body{
	background-image:url('img/images6.jpg');
	margin: 40px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}
</style>
<body>
	<div class="sub_top">
		<div class="location">
			<p>
				Minsung <span>&gt;</span> <strong>회원가입</strong>
				<form method="post" action="login2.jsp">
			<input type="submit" value="뒤로">
		</form>
			</p>
				
		</div>
	</div>
	<div class="content">
		<h1>회원가입</h1>

		<ul class="join_ul">
			<li class="mbr01">
				<div>

					<strong>성인가입</strong> 나이가<br />만19세이상입니다. <a
						href="memberForm.jsp">회원가입</a>

				</div>
			</li>
			<li class="mbr02">
				<div>

					<strong>청소년가입</strong>나이가<br />만19세미만입니다. <a
						href="memberForm.jsp">회원가입</a>

				</div>
			</li>
		</ul>
	
	</div>
	

</body>
</html>