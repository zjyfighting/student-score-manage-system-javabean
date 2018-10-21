<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	String xh=request.getParameter("username");
    String sf=request.getParameter("sel");
	session.setAttribute("xuehao", xh);
	//1为学生   2为老师
	session.setAttribute("shengfen", sf); 
	if(sf.equals("1"))
		response.sendRedirect("main.jsp");
	else if(sf.equals("2"))
		response.sendRedirect("main_tea.jsp");
	else
		response.sendRedirect("main_man.jsp");
%>



</body>
</html>