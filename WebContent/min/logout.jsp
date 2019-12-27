<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%session.invalidate(); //해당 세션을 없애고 세션에 속해 있는 값들을 없앤다
%>
<script>
alert("로그아웃되었습니다");
location.href="login2.jsp";
</script>
</body>
</html>
