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
<table align="center" width="60%"  border=1 >

<caption style="font-size: 30px"><b>所有成绩</b></caption>
<!-- //1 -->
  <tr>
    <th width="30%" height="30" style="font-size: 24px">学号：</th>
    <th width="30%" height="30" style="font-size: 24px">课程号：</th>
    <th width="40%" height="30" style="font-size: 24px">最终成绩:</th>
  </tr>

<%	
	MysqlDemo msd =new MysqlDemo();
	ResultSet rs=msd.select("select* from score order by cNo,sNo");
	while(rs.next()){
%>
<tr>  
<th width="30%" height="30" style="font-size: 20px"><%=rs.getString(1)%></th>  
<th width="30%" height="30" style="font-size: 20px"><%=rs.getString(2)%></th>  
<th width="40%" height="30" style="font-size: 20px"><%=rs.getString(3)%></th> 
</tr>
<%
}
%>
</table>
<div align="center">
<font size=5>
<br><br><a href="main_tea.jsp">返回</a>
</font>
</div>


</body>
</html>