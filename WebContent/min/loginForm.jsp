<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 폼</title>
<!-- 초기화 -->
<link rel="stylesheet" type="text/css" href="style1.css" />
<style type="text/css">
.member {
	font-size: 50px;
	text-shadow: 0 0 10px #666;
	color:00203F;
	margin: 0 auto;
	text-align: center;
	text-transform: capitalize;
	font-family: "맑은 고딕";
	font-style: italic;	
}
body {
	font-family: "맑은 고딕";
	font-size: 12px;
	
	
}

.form2 {
	width: 600px;
	min-width: 320px;
	height: 150px;
	margin: 20px auto;
	margin-left: 10px;
}

.form3 {
	float: left;
	
}

.form3 label {
	width: 1000px;
	height: 20px;
	 display: block; 
	float: left;
	
}


#wrap {
	width: 700px;
	height: 500px;
	margin: 0 auto;
}



input[type="submit"] {
	float: left;
	/*  display:block; */
	height: 50px;
	background: #FFBB00;
	border-radius: 5px;
	border: none;
	font-family: "맑은 고딕";
}

input[type="button"] {
	height: 30px;
	background: gray;
	border-radius: 5px;
	/*  width: 140px; */
	font-family: "맑은 고딕";
	margin-top: 10px;
	margin-right: 20px;
}

input[type="checkbox"] {
	margin-top: 20px;
}
</style>
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
<!-- 페이지 -->
<style>
body {
	width: 960px;
	margin: 0 auto;
	background-image:url('img/images6.jpg'); 
}

#page-wrapper {
	background-image:url('img/image11.jpg');
	margin: 40px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}
</style>

</head>
<body>
	<div id="page-wrapper">
		<script type="text/javascript">
			function checkValue() {
				inputForm = eval("document.loginInfo");
				if (!inputForm.id.value) {
					alert("아이디를 입력해주세요");
					inputForm.id.focus();
					return false;
				}
				if (!inputForm.passwd.value) {
					alert("비밀번호를 입력해주세요");
					inputForm.passwd.focus();
					return false;
				}
			}
		</script>
		<div id="wrap">
			<div class="ima"></div><h1 class="member">min-son 로그인</h1>
			
				<div class="form2">
					<div class="form3">

						<div class="agree">
							<ul class="id_pw_srh">
								<li>
									<div class="srh_box or">
										<div class="srh_top">
											<h2>Min-son</h2>
										</div>
										<div class="info">
											<form name="loginInfo" method="post" action="login.jsp"
												onsubmit="return checkValue()">
												<input type="hidden" name="s_type" value="id" />
												<fieldset>
													<p>
														<label for="userid">아이디</label> <input type="text"
															name="id" id="userid" placeholder="아이디" maxlength="50"
															title="아이디입력" />
													</p>
													<p>
														<label for="passwd">비밀번호</label> <input type="password"
															name="pwd" id="passwd" placeholder="비밀번호" maxlength="50"
															title="비밀번호 입력" />
													<form method="post" action="login.jsp">
														<input type="submit" value="로그인">
													</form>
													<label><input type="checkbox">아이디저장</label> 
													<label><input type="checkbox">보안접속</label>
												</fieldset>

											</form>
										</div>
									</div>
								</li>
								<li>
									<div class="srh_box br">
										<div class="srh_top">
											<h2>잊어버리셨나요?</h2>
										</div>
										<div class="info">
											<input type="hidden" name="s_type" value="pw" />
											<fieldset>
												<form method="post" action="IDfind.jsp">
													<button type="submit" value="아이디/비번 찾기">아디/비번찾기</button>
												</form>
												<form method="post" action="Newmember.jsp">
													<button type="submit" value="회원가입">회원가입</button>
												</form>
											</fieldset>
										</div>
									</div>
								</li>
							</ul>

						</div>

						

					</div>
					</div>
				</div>
			</div>
	
</body>
</html>