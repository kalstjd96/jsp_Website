<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
#page-wrapper {
	background-image:url('img/images7.gif');
	margin: 40px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}
.body{
color: #fff;}</style>
<html>
<head>
<title>회원가입 화면</title>
<!-- css 파일 분리 -->
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

		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if (document.userInfo.passwd.value != document.userInfo.passwordcheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
		if (!document.userInfo.name.value) {
			alert("이름을 입력하세요.");
			return false;
		}
		if (!document.userInfo.mail1.value) {
			alert("이메일을 입력하세요.");
			return false;
		}
		if (isNaN(document.userInfo.birthyy.value)) {
<%//isNaN()는 숫자인지 문자인지 검사하는 함수이다 검사결과는 boolean으로 반환 즉 isNaN(입력값)=true 는 입력값은 문자를 뜻하고 false일때는 숫자를 뜻한다%>
	alert("년도는 숫자만 입력가능합니다.");
			return false;
<%//false이기 때문에 숫자가 와야 성립이된다.%>
	}
	}

	// 취소 버튼 클릭시 로그인 화면으로 이동 기능을 추가하는 코드이다
	function goLoginForm() {
		history.go(-1);
	}
	
</script>

</head>
<body>
<div id="page-wrapper">
	<!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
	<div id="wrap">
		<br> <br> <b><font size="6" color="gray">회원가입</font></b> <br>
		<br> <br>


		<!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
		<!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->
		<form method="post" action="memberPro.jsp" name="userInfo"
			onsubmit="return checkValue()">
			<table>
				<tr>
					<td id="title">아이디</td>
					<td><input type="text" name="id" maxlength="50"
						><%
 	//키보드입력시 발생하는 onkeydown이벤트를 추가 이유는 중복체크후에 아이디 입력란에 사용 가능한 아이디를 지우고 새로운 아이디를 입력했을 경우를 다시 중복체크하라고 하는 표시이다
 %> 
				</tr>
				
<%
 	//키보드입력시 발생하는 onkeydown이벤트를 추가 이유는 중복체크후에 아이디 입력란에 사용 가능한 아이디를 지우고 새로운 아이디를 입력했을 경우를 다시 중복체크하라고 하는 표시이다
 %> 					
				<tr>
					<td id="title" >비밀번호</td>
					<td><input type="password" name="passwd" maxlength="50">
					</td>
				</tr>

				<tr>
					<td id="title">비밀번호 확인</td>
					<td><input type="password" name="passwordcheck" maxlength="50">
					</td>
				</tr>

				<tr>
					<td id="title">이름</td>
					<td><input type="text" name="name" maxlength="50"></td>
				</tr>

				<tr>
					<td id="title">성별</td>
					<td><input type="radio" name="gender" value="man" checked>male
						<input type="radio" name="gender" value="girl">female</td>
				</tr>

				<tr>
					<td id="title">생일</td>
					<td><input type="text" name="birthyy" maxlength="4"
						placeholder="년(4자)" size="6"> <select name="birthmm">
							<option value="">월</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
					</select> <input type="text" name="birthdd" maxlength="2" placeholder="일"
						size="4"></td>
				</tr>

				<tr>
					<td id="title">이메일</td>
					<td><input type="text" name="mail1" maxlength="50">@ <select
						name="mail2">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>
					</select></td>
				</tr>

				<tr>
					<td id="title">휴대전화</td>
					<td><input type="text" name="phone" maxlength="3" size="4">-<input type="text" name="phone" maxlength="4" 
					size="6">-<input type="text" name="phone" maxlength="4" size="6"></td>
				</tr>
				<tr>



					<td id="title">우편주소</td>
					<td><input type="text"  id="sample4_postcode" name=""
						placeholder="우편번호"> <input type="button"
						onclick="sample4_execDaumPostcode()" value="우편번호 검색"><br>
						<input type="text" size="25" id="sample4_roadAddress" name="address1" placeholder="도로명주소">
						<input type="text" size="25" id="sample4_jibunAddress" name="address2" placeholder="지번주소">
						<span id="guide" style="color: #999"></span>


				</tr>
			
			</table>
			<br> <input type="submit" value="가입" /> <input type="reset"
				value="취소">
		</form>
		<form method="post" action="Newmember.jsp">
			<input type="submit" value="뒤로">
		</form>
	</div>
	</div>

</body>
</html>