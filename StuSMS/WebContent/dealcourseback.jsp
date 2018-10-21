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
<title>排课后台</title>
</head>
<body>
<%
	int size=Integer.parseInt(request.getParameter("size"));
	MysqlDemo msd=new MysqlDemo();
 	for(int i=1;i<=size;i++)
 	{
 		String tn=request.getParameter("tno"+i);
 		String cn=request.getParameter("cno"+i);
		String pl=request.getParameter("p"+i);
		String ti=request.getParameter("t"+i);
		if(pl!=""|ti!="")
		{
			String sql="UPDATE sel_course SET place=?,time=? WHERE tNo=? AND cNo=?";
			String[] par=new String[]{pl,ti,tn,cn};
			msd.addMessage(sql, par);
		}
 	}
 	response.sendRedirect("main_man.jsp");
%>

</body>
</html>