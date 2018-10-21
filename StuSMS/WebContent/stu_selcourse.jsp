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
    <th width="30%" height="40" style="font-size: 24px">teacher:</th>
  </tr>

<%	
	MysqlDemo msd =new MysqlDemo();
	ResultSet rs=msd.select("SELECT course.cNo,cName,tName FROM course,teacher,sel_course WHERE teacher.tNo=sel_course.tNo AND course.cNo=sel_course.cNo");
	while(rs.next()){
%>
<tr>  
<th width="30%" height="30" style="font-size: 20px"><%=rs.getString(1)%></th>  
<th width="30%" height="30" style="font-size: 20px"><%=rs.getString(2)%></th>  
<th width="30%" height="30" style="font-size: 20px"><%=rs.getString(3)%></th>  
</tr>
<%
}
%>
</table>

<form action="selcourseback.jsp" method="post">
<font size="5">
<div align="center">
<br><br>请选择课程：<br>
<select name="choosecour">
<%
	ResultSet cour=msd.select("select distinct cName from sel_course,course where sel_course.cNo=course.cNo");
	ArrayList <String> choice=new ArrayList<>();
	while(cour.next())
	{
		choice.add(cour.getString("cName"));
	}
	for(int i=0;i<choice.size();i++)
	{
		out.print("<option value="+choice.get(i)+">"+choice.get(i)+"</option>");
	}
%>
</select>
<br><br>
请选择老师：<br>
<select name="choosetea">
<%
	ResultSet tea=msd.select("SELECT DISTINCT tName FROM sel_course,teacher WHERE sel_course.tNo=teacher.tNo");
	ArrayList <String> choicetea=new ArrayList<>();
	while(tea.next())
	{
		choicetea.add(tea.getString("tName"));
	}
	for(int i=0;i<choicetea.size();i++)
	{
		out.print("<option value="+choicetea.get(i)+">"+choicetea.get(i)+"</option>");
	}
%>
</select><br><br>
<input type="submit" name="sub" value="提交">
</div>
</font>
</form>

</body>
</html>