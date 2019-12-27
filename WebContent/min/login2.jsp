<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width", initial-scale="1" >        
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP</title>
<style>
body{
	background-image:url('img/images6.jpg');
	margin: 40px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}
</style>
</head>
<div id="page-wrapper">
    <nav class ="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expand="false">
                <span class ="icon-bar"></span>
                <span class ="icon-bar"></span>
                <span class ="icon-bar"></span>
            </button>
            <a class ="navbar-brand" >환영합니다.</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="http://www.aladin.co.kr/home/welcome.aspx"> 서적구매</a></li>
                <li><a href="https://www.google.co.kr/webhp?hl=ko&sa=X&ved=0ahUKEwiLt_2rnrHbAhUJ6LwKHepbAWAQPAgD">서적검색</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                <a href="#" class = "dropdown-toggle"
                    data-toggle="dropdown" role ="button" 
                    aria-haspopup="true"
                    aria-expanded="false">접속하기<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="http://www.aladin.co.kr/home/welcome.aspx">서적구매하기</a></li>
                        <li><a href="https://www.google.co.kr/webhp?hl=ko&sa=X&ved=0ahUKEwiLt_2rnrHbAhUJ6LwKHepbAWAQPAgD">서적검색하기</a></li>                    
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    
    <div class="container">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class ="jumbotron" style="padding-top:20px;">
                <form method = "post" action="loginForm.jsp">
                    <h3 style="text-align:center;">어서오세요</h3>
                    <input type="submit" class="btn btn=primary form-control" value="로그인"><br>
                    </form><br>
                    <form method ="post" action="IDfind.jsp">
                    <input type="submit" class="btn btn=primary form-control" value="ID/PW찾기">
                    </form><br>
                    <form method ="post" action="Newmember.jsp">
                    <input type="submit" class="btn btn=primary form-control" value="회원가입">
                    </form><br>
                </form>
            </div> 
        </div> 
        <div class="col-lg-4"></div>
    </div>
    </div>
  
    
    
    
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>
