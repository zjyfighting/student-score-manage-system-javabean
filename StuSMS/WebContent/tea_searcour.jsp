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

<caption style="font-size: 30px"><b>我的课表</b></caption>
<!-- //1 -->
  <tr>
    <th width="30%" height="40" style="font-size: 24px">courseno：</th>
    <th width="35%" height="40" style="font-size: 24px">place：</th>
    <th width="35%" height="40" style="font-size: 24px">time：</th>
  </tr>

<%	
	MysqlDemo msd =new MysqlDemo();
	String sql="SELECT cNo,place,time from sel_course where tNo=?";
	String tno=session.getAttribute("xuehao").toString();
	String[] par=new String[]{tno};
	ResultSet rs=msd.searchforsafe(sql, par);
	while(rs.next()){
%>
<tr>  
<th width="30%" height="30" style="font-size: 20px"><%=rs.getString(1)%></th>  
<th width="30%" height="35" style="font-size: 20px"><%=rs.getString(2)%></th>
<th width="30%" height="35" style="font-size: 20px"><%=rs.getString(3)%></th>    
</tr>
<%
}
%>
</table>
<br><br><br>
<div align="center">
<a href="main_tea.jsp">返回</a>
</div>




</body>
</html>