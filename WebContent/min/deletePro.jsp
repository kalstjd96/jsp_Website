<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%request.setCharacterEncoding("utf-8"); %>
<%
    String id=request.getParameter("id"); //첫페이지의 있는 id와 비번을 가져오는 것이다
    String passwd=request.getParameter("password");
    
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs= null;
    
    try{
    String jdbcUrl="jdbc:oracle:thin:@168.126.146.45:1521:orcl";
    String dbId="20152518";
    String dbPass="960320";
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass);
    
    String sql="select id, password from o_member where id=?";
    pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    rs=pstmt.executeQuery();
    
    if(rs.next()){
    	String rId= rs.getString("id");
    	String rPasswd=rs.getString("password");
    	if(id.equals(rId) && passwd.equals(rPasswd)){
    		sql="delete from o_member where id=?";
    		pstmt=conn.prepareStatement(sql);
    		pstmt.setString(1, id);
    		pstmt.executeUpdate();
    
    		%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>레코드삭제부분</title>
</head>
<body>
	<%session.invalidate(); //해당 세션을 없애고 세션에 속해 있는 값들을 없앤다
%>
	<script>
	alert("회원탈퇴가 정상적으로 이루어 졌습니다. 이용해 주셔서 감사합니다.");
	history.go(-1);
	</script>

	<%
	}else 
		%><script>
		alert("패스워드가 틀리셨습니다.");
		location.href="delete.jsp"</script>
	<% 
	}else
	%><script>
		alert("아이디가 틀리셨습니다.");
		location.href="delete.jsp"</script>
		<% 
 }catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs != null)
			try{rs.close();}catch(SQLException sqle){}
		if(pstmt != null)
			try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null)
			try{conn.close();}catch(SQLException sqle){}
	}
%> 

</body>
</html>

