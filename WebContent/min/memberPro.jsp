<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pass = request.getParameter("passwd");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String birthyy = request.getParameter("birthyy");
		String birthmm = request.getParameter("birthmm");
		String birthdd = request.getParameter("birthdd");
		String mail1 = request.getParameter("mail1");
		String mail2 = request.getParameter("mail2");
		String phone = request.getParameter("phone");
		String address0 = request.getParameter("address0");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String mailadd = mail1+"@"+mail2;
		String addadd = address0+" "+address1+" "+address2;
		String biradd= birthyy+ "/" +birthmm+"/"+birthdd ;

		Connection conn = null;
		PreparedStatement pstmt = null;
		String str = "";
		try {
			String jdbcUrl = ("jdbc:oracle:thin:@168.126.146.45:1521:orcl");
			String dbId = "20152518";
			String dbPass = "960320";

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

			String sql = "insert into O_MEMBER values (?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			pstmt.setString(3, name);
			pstmt.setString(7, gender);
			pstmt.setString(8, biradd);
			pstmt.setString(4, mailadd);
			pstmt.setString(5, phone);
			pstmt.setString(6, addadd);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();

			str = "회원가입이 완료되었습니다.";
			%><script>
			alert("가입완료");
			location.href = "login2.jsp";
		</script><% 
		} catch (Exception e) {
			 //어느부분의 오류인지 알 수없게된 것을 알수 있게 설정
			str = "아이디가 중복되어 있습니다.";
			%><script>
			alert("아이디중복");
			history.go(-1);
		</script>e.printStackTrace();<% 
		} finally {
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

	<%=str%>


</body>
</html>
