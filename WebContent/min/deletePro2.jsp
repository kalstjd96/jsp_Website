<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%request.setCharacterEncoding("utf-8"); %>
<%
    String id=request.getParameter("id2"); //첫페이지의 있는 id와 비번을 가져오는 것이다
    
    
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs= null;
    
    try{
    String jdbcUrl="jdbc:oracle:thin:@168.126.146.45:1521:orcl";
    String dbId="20152518";
    String dbPass="960320";
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass);
    
    String sql="select id from o_member where id= ?";
    pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    rs=pstmt.executeQuery();
    while(rs.next()){
    	String rId= rs.getString("id");
    	System.out.println(rId);
    	System.out.println(id);
    	if(id.equals(rId)){
    		sql="delete from o_member where id= ?";
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
	<%
	
	session.invalidate(); //해당 세션을 없애고 세션에 속해 있는 값들을 없앤다
%>
	<script>
	alert("정상적으로 추방하였습니다.");
	location.href="Memberlist.jsp";
	</script>

	<%
    
    	}else {
    		
		%><script>
		alert("추방에 실패했습니다.");
		location.href="Memberlist.jsp"</script>
	<% 
	System.out.println(rId);}
    }
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
