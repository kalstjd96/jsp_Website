<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="../js/script.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script charset="UTF-8" type="text/javascript"
	src="http://t1.daumcdn.net/cssjs/postcode/1522037570977/180326.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample4_roadAddress').value = fullRoadAddr;
						document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';

						} else {
							document.getElementById('guide').innerHTML = '';
						}
					}
				}).open();
	}
</script>
<style>

input[type="submit"] {
	height: 30px;
	background: gray;
	border-radius: 5px;
	/*  width: 140px; */
	font-family: "맑은 고딕";
	margin-top: 10px;
	margin-right: 20px;
}

input[type="button"] {
	height: 30px;
	background: silver;
	border-radius: 5px;
	/*  width: 140px; */
	font-family: "맑은 고딕";
	margin-top: 10px;
	margin-right: 20px;
}
body {
	width: 960px;
	margin: 0 auto;
	background: #E6E6E6;  
}
#page-wrapper {
	background-image:url('img/images2.jpg');
	margin: 40px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보를 수정하는 부분 레코드 수정</title>
</head>

<script type="text/javascript">
	// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
	function checkValue() {

		if (!document.userInfo.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.userInfo.passwd.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

	}
</script>
<body>
<div id="page-wrapper">
	<h2>회원정보 수정</h2>
	<form method="post" action="retouchPro.jsp" name="userInfo"
			onsubmit="return checkValue()">
	<table>
		
			<th>아이디:</th>
			<td><input type="text" name="id" maxlength="50"></td> <br>
			<tr>
				<th id="passwd">비밀번호:</th>
				<td><input type="password" name="passwd" maxlength="50">
				</td>
			</tr>
		
	</table>
		
	<h2>변경하실 내용을 입력하시면 됩니다.</h2>
	<table>
		<tr>
			<td>비밀번호:</td>
			<td><input type="password" name="passwd1" maxlength="50"></td>
		</tr>

		<tr>
			<td>이름:</td>
			<td><input type="text" name="name" maxlength="15"></td>
		</tr>

		<tr>
			<td>이메일</td>
			<td><input type="text" name="address" maxlength="50">@ <select
				name="address2">
					<option>naver.com</option>
					<option>daum.net</option>
					<option>gmail.com</option>
					<option>nate.com</option>
			</select></td>
		</tr>

		<tr>
			<td>휴대번호:</td>
			<td><input type="text" name="phone" maxlength="3" size="4">-<input type="text" name="phone1" maxlength="4" size="6">
			-<input type="text" name="phone2" maxlength="4" size="4"></td>
		</tr>
		<tr>
			<td id="title">우편주소</td>
			<td><input type="text" id="sample4_postcode" name="address00" placeholder="우편번호">
				<input type="button" onclick="sample4_execDaumPostcode()"
				value="우편번호 검색"><br> <input type="text" size="25"
				id="sample4_roadAddress" name="address11" placeholder="도로명주소">
				<input type="text" size="25" id="sample4_jibunAddress"
				name="address22" placeholder="지번주소"> <span id="guide"
				style="color: #999"></span>
		</tr>
		<tr>
			<td><input type="submit" value="입력완료"></td>
		</tr>
		</form>
	</table>
	</div>
	<form method="post" action="main0.jsp">
	<input type ="submit" value="뒤로">
	</form>
</body>
</html>