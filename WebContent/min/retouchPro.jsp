
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String passwd1 = request.getParameter("passwd1");
	String phone= request.getParameter("phone");
	String phone1= request.getParameter("phone1");
	String phone2= request.getParameter("phone2");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String address2 = request.getParameter("address2");
	String address00 = request.getParameter("address00");
	String address11 = request.getParameter("address11");
	String address22 = request.getParameter("address22");
	String addadd = address + "@" + address2;
	String add1122 = address00 +" "+address11 + " "+ address22;
	String phoneadd =phone+"-"+phone1+"-"+phone2;
	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		String jdbcUrl = "jdbc:oracle:thin:@168.126.146.45:1521:orcl";
		String dbId = "20152518";
		String dbPass = "960320";

		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

		String sql = "select id, PASSWORD from O_MEMBER where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			String rId = rs.getString("id");
			String rPasswd = rs.getString("password");
			if (id.equals(rId) && passwd.equals(rPasswd)) {
				sql = "update O_MEMBER set password=?,name=?, address=?, phone=?, address1=? where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, passwd1);
				pstmt.setString(2, name);
				pstmt.setString(3, addadd);
				pstmt.setString(4, phoneadd);
				pstmt.setString(5, add1122);
				pstmt.setString(6, id);
				pstmt.executeUpdate();
				%><script>
				alert("회원정보수정이 완료되었습니다");
				location.href = "main0.jsp";
			</script> <% 
			} else
				out.println("패스워드가 틀리셨습니다.");
		} 
%>

<body>
	
</body>
<%
	
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (rs != null)
			try {
				rs.close();
			} catch (SQLException sqle) {
			}
		if (pstmt != null)
			try {
				pstmt.close();
			} catch (SQLException sqle) {
			}
		if (conn != null)
			try {
				conn.close();
			} catch (SQLException sqle) {
			}
	}
%>
</html>