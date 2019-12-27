<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page session="true" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test login 확인</title>
</head>
<body>
  <%! 
    String id1;
    String passwd1;
    String name1;
    //이것은 DB에 설정되어있는 값을 변수선언하기위해 설정한것이다
    %>
    
    
    <% 
    String id= request.getParameter("id");
    String pwd = request.getParameter("pwd");
    String name = request.getParameter("name");
    try{
    	String jdbcUrl=("jdbc:oracle:thin:@168.126.146.45:1521:orcl");
    	String dbId="20152518";
    	String dbPass="960320";
    	//DB SQL의 경로와 아이디 와 비번을 설정하여 jsp에서 접근이 가능하게 한다

    	
    	Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);  //db에 연결하겠다는 선언

        String sql="select * from o_member";  //o_member테이블에 존재하는것을 로그인해야 로그인이된다.
    	PreparedStatement pstmt=conn.prepareStatement(sql);//실제 sql문을 수행하기위해서 생성한것
    	ResultSet rs=pstmt.executeQuery(); //sql쿼리문의 정보를 rs에 넣는 것 
    		
    	while(rs.next()){  //sql의 값들으 다 스캔해야하니까 while문을 이용
    		id1 = rs.getString("ID");
    		passwd1 = rs.getString("PASSWORD");
    		name1 = rs.getString("NAME");
			  		
        if(id1.equals(request.getParameter("id")) &&
        	passwd1.equals(request.getParameter("pwd")) ){
       		session.setAttribute("loginUser", id1);
       		session.setAttribute("password", passwd1);
       		if(id.equals("kim")){
       			response.sendRedirect("main.jsp");  //정보공개가 있는 페이지로 관리자페이지
       		}else{
       		response.sendRedirect("main0.jsp");   //정보공개가 없는 페이지로  일반사용자페이지
		}
       		
		}else{
           %>
           
           	<script>
           		
           		alert("회원정보가 틀리셨습니다. 다시 입력해주세요.")
           		//location.href="newimage.jsp";
           		history.go(-1); //현재의 전 즉 바로앞  페이지로 돌아간다
           	</script>
          <%   
        }
    	}
    }catch(Exception e) {
        	e.printStackTrace();  //스택형식으로 오류를 나타내라는 뜻인데 이것을 제외하겠다라는 의미로 한쪽은 막히고 한쪽으로만 정보가 들어오는 방식
        							//아래에서부터 오류를 아래표에다가 알려주는 것이다
    }
    %>

</body>
</html>
