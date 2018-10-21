<%@page import="com.sun.org.apache.bcel.internal.classfile.Attribute"%>
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
	String kc=new String(request.getParameter("choosecour").getBytes("ISO-8859-1"),"utf-8");
	String ls=new String(request.getParameter("choosetea").getBytes("ISO-8859-1"),"utf-8");
	MysqlDemo msd=new MysqlDemo();
	String kch="",lsh="";
	//================================获取cNo
	ResultSet r1=msd.select("select * from course");
	while(r1.next())
		if(r1.getString("cName").equals(kc))
			kch=r1.getString("cNo");
	//================================获取tNo
	ResultSet r2=msd.select("select * from teacher");
	while(r2.next())
		if(r2.getString("tName").equals(ls))
			lsh=r2.getString("tNo");
	//================================添加进去
	String sql="insert into stu_selcourse values(?,?,?)";
	String sno=session.getAttribute("xuehao").toString();
	String[] par=new String[]{sno,lsh,kch};
	msd.addMessage(sql, par);
	//================================重定向
	response.sendRedirect("main.jsp");
%>


</body>
</html>