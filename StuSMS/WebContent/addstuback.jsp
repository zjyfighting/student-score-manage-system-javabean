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
<title>添加学生信息</title>
</head>
<body>

<%
	String sno=request.getParameter("number");
	String sname=request.getParameter("name");
	String sx=request.getParameter("sex");
	String tel=request.getParameter("telephone");
	MysqlDemo msd=new MysqlDemo();
	String sql="insert into student(sNo,sName,sSex,sTel) values(?,?,?,?)";
	String[] param=new String[]{sno,sname,sx,tel};
	msd.addMessage(sql, param);
	response.sendRedirect("main_man.jsp");
%>




</body>
</html>