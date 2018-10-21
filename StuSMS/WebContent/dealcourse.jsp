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
<title>排课</title>
</head>
<style type="text/css">      
     body{      
        background-image: url(image/mainbg.jpg);      
        background-size:cover;    
     }    
</style>
<body>

<form action="dealcourseback.jsp"  method="post">
<table align="center" width="75%"  border=1 >

<caption style="font-size: 30px"><b>排课</b></caption>
<!-- //1 -->
  <tr>
    <th width="25%" height="40" style="font-size: 24px">工号：</th>
    <th width="25%" height="40" style="font-size: 24px">课程号：</th>
    <th width="25%" height="40" style="font-size: 24px">地点:</th>
    <th width="25%" height="40" style="font-size: 24px">时间:</th>
  </tr>

<%	
	int i=1;
	MysqlDemo msd =new MysqlDemo();
	ResultSet rs=msd.select("SELECT tNo,cNo FROM sel_course order by tNo,cNo");
	while(rs.next()){	
%>
<tr>  
<th style="font-size: 20px"><%=rs.getString(1)%></th>  
<th style="font-size: 20px"><%=rs.getString(2)%></th>
<input type="hidden" name="tno<%=i%>" value=<%=rs.getString(1)%>>
<input type="hidden" name="cno<%=i%>" value=<%=rs.getString(2)%>>
<th><input type=text name="p<%=i%>">  </th>
<th><input type="text" name="t<%=i%>">  </th>    
</tr>
<%
	i++;
}
%>
<input type="hidden" name=size value=<%=i-1%>>
</table>
<div align="center">
<input type="submit" name="sub" value="确定">
</div>

</form>
</body>
</html>