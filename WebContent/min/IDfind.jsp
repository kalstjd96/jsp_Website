<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ID/비밀번호 찾기 | 회원관리</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<style>
body{
	background-image:url('img/images6.jpg');
	margin: 40px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}
</style>
<link rel="stylesheet" type="text/css" href="style1.css" />
<script type='text/javascript' src='WebContent/min/function2.js'></script>
<script>function chk_idform(f){
	if (f.id_name.value=="")
	{
		alert("이름을 입력해주세요.");
		f.id_name.focus();
		return false;
	}
	if (f.me_hp1.value=="")
	{
		alert("휴대폰번호 앞 3자리를 선택해주세요.");
		f.me_hp1.focus();
		return false;
	}
	if (f.me_hp2.value=="")
	{
		alert("휴대폰번호 중간 4자리를 입력해주세요.");
		f.me_hp2.focus();
		return false;
	}
	if (f.me_hp3.value=="")
	{
		alert("휴대폰번호 뒤 4자리를 입력해주세요.");
		f.me_hp3.focus();
		return false;
	}
	if (f.me_email.value=="")
	{
		alert("이메일을 입력해주세요.");
		f.me_email.focus();
		return false;
	}
}

function chk_pwform(f){
	if (f.me_id.value=="")
	{
		alert("아이디를 입력해주세요.");
		f.me_id.focus();
		return false;
	}
	if (f.me_name.value=="")
	{
		alert("이름을 입력해주세요.");
		f.me_name.focus();
		return false;
	}
	if (f.me_email.value=="")
	{
		alert("이메일을 입력해주세요.");
		f.me_email.focus();
		return false;
	}
}
</script>
<style>
#page-wrapper {
	background:#D8F6CE;
	margin: 40px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}
</style>
</head>
<body>
<div id="page-wrapper">
	<div class="content">
		<h1>ID/비밀번호 찾기</h1>
		<div class="agree">
			<ul class="id_pw_srh">
				<li>
					<div class="srh_box or">
						<div class="srh_top">
							<h2>ID찾기</h2>
							내정보에 등록한 정보로<br/> 아이디를 찾을 수 있습니다.
						</div>
						<div class="info">
							<form name="id_form" method="post" action="search_idpw.jsp" onsubmit="return chk_idform(this)">
							<input type="hidden" name="s_type" value="id" />
								<fieldset>
									<legend>id찾기 폼</legend>
									<p><label for="id_name">이름</label> <input type="text" name="me_name" id="id_name" title="이름 입력" /></p>
									<p><label for="id_mobile">휴대폰번호</label>
									<select name="me_hp1">
										<option value="">선택</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select> - <input type="text" name="me_hp2" id="id_mobile1" title="휴대폰번호 입력" style="width:44px;" /> - <input type="text" name="me_hp3" id="id_mobile2" title="휴대폰번호 입력" style="width:43px;" /></p>
									<p><label for="id_mail">가입시 이메일</label> <input type="text" name="me_email" id="id_mail1" title="가입시 이메일 입력" /></p>
									<button type="submit">찾기</button>
								</fieldset>
							</form>
						</div>
					</div>
				</li>
				<li>
					<div class="srh_box br">
						<div class="srh_top">
							<h2>비밀번호 찾기</h2>
							내정보에 등록한 정보로<br /> 비밀번호를 재설정할 수 있습니다.
						</div>
						<div class="info">
							<form name="pw_form" method="post" action="search_idpw.jsp" onsubmit="return chk_pwform(this)">
							<input type="hidden" name="s_type" value="pw" />
								<fieldset>
									<legend>비밀번호 찾기 폼</legend>
									<p><label for="pw_name">ID</label> <input type="text" name="me_id" id="pw_name" title="아이디 입력" /></p>
									<p><label for="pw_phone">이름</label> <input type="text" name="me_name" id="pw_phone" title="이름 입력" /></p>
									<p><label for="pw_mail">가입시 이메일</label> <input type="text" name="me_email" id="pw_mail2" title="가입시 이메일 입력" /></p>
									<button type="submit">찾기</button>
								</fieldset>
							</form>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	</div>
	
</body>
</html>
