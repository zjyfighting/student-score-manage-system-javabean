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
<title>添加老师信息</title>
</head>
<body>

<%
	String sno=request.getParameter("tea_num");
	String sname=request.getParameter("tea_name");
	MysqlDemo msd=new MysqlDemo();
	String sql="insert into teacher values(?,?)";
	String[] param=new String[]{sno,sname};
	msd.addMessage(sql, param);
	response.sendRedirect("main_man.jsp");
%>




</body>
</html>