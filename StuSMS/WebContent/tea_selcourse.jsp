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
<style type="text/css">      
     body{      
        background-image: url(image/mainbg.jpg);      
        background-size:cover;    
     }
 
</style>
<body>




<table align="center" width="50%"  border="1" >

<caption style="font-size: 30px"><b>选课</b></caption>
<!-- //1 -->
  <tr>
    <th width="30%" height="40" style="font-size: 24px">courseno：</th>
    <th width="30%" height="40" style="font-size: 24px">coursename：</th>
  </tr>

<%	
	MysqlDemo msd =new MysqlDemo();
	ResultSet rs=msd.select("SELECT * from course");
	while(rs.next()){
%>
<tr>  
<th width="30%" height="30" style="font-size: 20px"><%=rs.getString(1)%></th>  
<th width="30%" height="30" style="font-size: 20px"><%=rs.getString(2)%></th>  
</tr>
<%
}
%>
</table>

<form action="tea_selcourseback.jsp" method="post">
<font size="5">
<div align="center">
<br><br>请选择课程的课程号：<br>
<select name="t_chocour">
<%
	ResultSet cour=msd.select("select cNo from course");
	ArrayList <String> choice=new ArrayList<>();
	while(cour.next())
	{
		choice.add(cour.getString("cNo"));
	}
	for(int i=0;i<choice.size();i++)
	{
		out.print("<option value="+choice.get(i)+">"+choice.get(i)+"</option>");
	}
%>
</select>
<br><br>
<input type="submit" name="sub" value="提交">
</div>
</font>
</form>




</body>
</html>