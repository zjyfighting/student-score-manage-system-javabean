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



<form action="writescoreback.jsp" method="post">

<table align="center" width="50%"  border="1" >

<caption style="font-size: 30px"><b>输入成绩</b></caption>
<!-- //1 -->
  <tr>
    <th width="30%" height="40" style="font-size: 24px">sNo：</th>
    <th width="30%" height="40" style="font-size: 24px">cNo：</th>
    <th width="40%" height="40" style="font-size: 24px">score：</th>
  </tr>

<%	
	MysqlDemo msd =new MysqlDemo();
	String sql="SELECT sNo,cNo FROM score ORDER BY cNo,sNo";
	ResultSet rs=msd.select(sql);
	int i=1;
	while(rs.next()){
%>
<tr>  
<th style="font-size: 20px"><%=rs.getString(1)%></th>  
<th style="font-size: 20px"><%=rs.getString(2)%></th>
<input type="hidden" name="sno<%=i%>" value=<%=rs.getString(1)%>>
<input type="hidden" name="cno<%=i%>" value=<%=rs.getString(2)%>>
<th><input type="text" name="score<%=i%>"></th>    
</tr>
<%
i++;
}
%>
<input type="hidden" name="size" value=<%=i-1%>>
</table>
<div align="center">
<input type="submit" value="提交">
</div>
</form> 

</body>
</html>