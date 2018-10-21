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
<title>查看学生成绩</title>
</head>
<style type="text/css">      
     body{      
        background-image: url(image/mainbg.jpg);      
        background-size:cover;    
     }
</style>
<body>
<div align=center>
<br><br><br><br><br><br><br><br>
<font size="5">
<%
	String sno=session.getAttribute("xuehao").toString();
	MysqlDemo msd=new MysqlDemo();
	String[] s=new String[]{sno};
	ResultSet rs=msd.searchforsafe("select* from score where sNo=?",s);
	if(rs==null)
		out.print("没有你的成绩");
	else
		while(rs.next())
		{
			out.print("你在课程"+rs.getInt("cNo")+"中");
			out.print("的成绩为："+rs.getInt("Score")+"<br>");
		}
%>
<a href="main.jsp">返回</a>
</font>
</div>


</body>
</html>