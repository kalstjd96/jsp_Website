<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<title>Ż�� ȭ��</title>

<style type="text/css">
table {
	margin-left: auto;
	margin-right: auto;
	border: 3px solid skyblue;
}
.delete0 {
	font-size: 50px;
	text-shadow: 0 0 10px #666;
	color: #ff0000;
	margin: 0 auto;
	text-align: center;
	text-transform: capitalize;
	font-family: fantasy;
	font-style: oblique;
}
.delete1 {
	font-size: 50px;
	text-shadow: 0 0 10px #666;
	color: #ff00;
	margin: 0 auto;
	text-align: center;
	text-transform: capitalize;
	font-family: fantasy;
	font-style: oblique;
}

input[type="button"] {
	height: 30px;
	background: gray;
	border-radius: 5px;
	/*  width: 140px; */
	font-family: "���� ���";
	margin-top: 10px;
	margin-right: 20px;
}


input[type="submit"] {
	height: 30px;
	background: red;
	border-radius: 5px;
	/*  width: 140px; */
	font-family: "���� ���";
	margin-top: 10px;
	margin-right: 20px;
}

td {
	border: 1px solid skyblue
}

#title {
	background-color: skyblue
}
#page-wrapper {
	background:#CEF6F5;
	margin: 40px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}
body{
	background-image:url('img/images6.jpg');
	margin: 40px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}
</style>

<script type="text/javascript">
	// ��й�ȣ ���Է½� ���â
	function checkValue() {
		if (!document.deleteform.password.value) {
			alert("��й�ȣ�� �Է����� �ʾҽ��ϴ�.");
			return false;
		}

	}
</script>

</head>
<body>
<div id="page-wrapper">
	<br>
	<br>
	<b><h2 class=delete0>Ż��</h2><h2 class=delete1>�� ��� ������ �����˴ϴ�.</h2></b>
	<br>
	<br>
	<br>
	
	<form method="post" action="deletePro.jsp">
	
		<table>
			<tr>
				<td bgcolor="gray">���̵�</td>
				<td><input type="text" name="id" maxlength="50"></td>
				<td bgcolor="gray">��й�ȣ</td>
				<td><input type="password" name="password" maxlength="50"></td>
			</tr>
			
		</table>

		<br> <input type="button" value="���"
			onclick="javascript:window.location='main0.jsp'"> <input
			type="submit" value="Ż��" />
	</form>
	</div>
</body>
</html>