<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전체회원정보 보는 페이지</title>
<style type="text/css">
.tablemin {
	padding:30px, 30px, 30px, 30px;
	
	}
.member {
 font-size: 50px;
 text-shadow: 0 0 10px #666;
 color: #fff;
 margin: 0 auto;
 text-align: center;
 text-transform: capitalize;
 font-family: "맑은 고딕";
 font-style: italic;
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

*,body{
 font-family: "맑은 고딕";
 margin:0px;
 padding:0px;
 font-size:11px;
}
caption span{
 display:none;
}
table{
 border-collapse: collapse;
}
td{
 border-bottom: 1px solid #000;
 text-align:center;
 padding:5px 10px;
}
th{
 height:34px;
 padding:0px 0px;
 font-size:12px;
}
th span{
/*  border-right:1px solid #666; */
 
  display:block;
  padding:0px 0px 2px 0px;
}
tr:FIRST-CHILD{
 
}
tr:last-CHILD{
 border-bottom: 2px solid #000;
}

.bb{
 border:none;
}
td{
 background: url(img/sung.jpg) no-repeat right bottom;
}

body{
	background-image:url('img/images8.jpg');
	margin: 40px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}
</style>
</head>
<body>
<h1 class="member">회원정보 창입니다.</h1>
<br><br>


<table class ="tablemin">
	
	<table border="1" bgcolor="gray">
		<tr>
	<th width="100"><span>아이디</span></th>
	<th width="100"><span>비밀번호</span></th>
	<th width="100"><span>이름</span></th>
	<th width="100"><span>이메일</span></th>
	<th width="100"><span>휴대폰번호</span></th>
	<th width="100"><span>우편주소</span></th>
	<th width="100"><span>성별</span></th>
	<th width="100"><span>생년월일</span></th>
	<th width="100"><span>추방</span></th>
	
	</tr>
	<p>
	
	<%
	
	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement pstmt =null;
	
	
	try{
		String jdbcUrl ="jdbc:oracle:thin:@168.126.146.45:1521:orcl";
		String dbID ="20152518";
		String dbPass ="960320";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		 conn = DriverManager.getConnection(jdbcUrl, dbID, dbPass);
		
		String sql = "select * from O_MEMBER";
		pstmt= conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String id2 =rs.getString("ID");
			String password = rs.getString("PASSWORD");
			String name2 = rs.getString("NAME");
			String addr = rs.getString("ADDRESS");
			String phone1 = rs.getString("PHONE");
			String address1 = rs.getString("ADDRESS1");
			String gender = rs.getString("GENDER");
			String birthyy = rs.getString("BIRTHYY");
			%>
			<tr>
			<td width="100"> <%=id2 %></td> 
			<td width="100"> <%=password %></td>
			<td width="100"> <%=name2 %></td>
			<td width="100"> <%=addr %></td>
			<td width="100"> <%=phone1 %></td>
			<td width="100"> <%=address1 %></td>
			<td width="100"> <%=gender %></td>
			<td width="100"> <%=birthyy %></td>
			<td width="100"><%if(id2.equals("kim")){%>관리자<%}else{%>
			<form method="post" action="deletePro2.jsp">  
				<input type="hidden" name="id2" value="<%=id2 %>"/>
				<input type="submit" value="추방">
			</form></td>
			
			
			
			</tr>
			
			<%}
		}
			}catch(Exception e) {
			e.printStackTrace();
			}finally {
				if(rs != null)
					try{rs.close();}catch(SQLException sqle){}
				if(pstmt != null)
					try{pstmt.close();}catch(SQLException sqle){}
				if(conn != null)
			try{conn.close();}catch(SQLException sqle){}
			
		}
	
		
	%>

	</table>
	</table>
	<form method="post" action="main.jsp">
	<input type ="submit" value="뒤로">
	
	</form>

</body>
</html>