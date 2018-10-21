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
	int len=Integer.parseInt(request.getParameter("size"));
	MysqlDemo msd=new MysqlDemo();
	for(int i=1;i<=len;i++)
	{
		String sn=request.getParameter("sno"+i);
		String cn=request.getParameter("cno"+i);
		String sc=request.getParameter("score"+i);
		String sql="UPDATE score SET Score=? WHERE sNo=? AND cNo=?";
		String[] par=new String[]{sc,sn,cn};
		msd.addMessage(sql, par);
	}
	response.sendRedirect("main_tea.jsp");
%>

</body>
</html>