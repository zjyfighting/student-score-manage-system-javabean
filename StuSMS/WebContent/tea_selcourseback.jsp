<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="java.sql.ResultSet"
    import="java.sql.SQLException"
    import="y1.MysqlDemo"
    import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<%
	String tno=session.getAttribute("xuehao").toString();
	String cno=request.getParameter("t_chocour");
	MysqlDemo msd=new MysqlDemo();
	String s="insert into sel_course(tNo,cNo) values(?,?)";
	String[] par=new String[]{tno,cno};
	msd.addMessage(s, par);
	response.sendRedirect("main_tea.jsp");
%>


</body>
</html>