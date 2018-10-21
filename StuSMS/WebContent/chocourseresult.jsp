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
<title>查看选课结果</title>
</head>
<style type="text/css">      
     body{      
        background-image: url(image/mainbg.jpg);      
        background-size:cover;    
     }
</style>
<body>



<table align="center" width="70%"  border="1" >

<caption style="font-size: 30px"><b>你的课程列表</b></caption>
<!-- //1 -->
  <tr>
    <th width="20%" height="40" style="font-size: 24px">No：</th>
    <th width="20%" height="40" style="font-size: 24px">tname：</th>
    <th width="20%" height="40" style="font-size: 24px">cName:</th>
    <th width="20%" height="40" style="font-size: 24px">place:</th>
    <th width="20%" height="40" style="font-size: 24px">time:</th>
  </tr>

<%	
	MysqlDemo msd =new MysqlDemo();
	String sql="SELECT tName,cName,place,TIME FROM sel_course a,teacher b,stu_selcourse c,course d WHERE c.sNo=? AND c.tNo=b.tNo AND c.cNo=d.cNo AND a.tNo=c.tNo AND a.cNo=c.cNo";
	String sno=session.getAttribute("xuehao").toString();
	String[] par=new String[]{sno};
	ResultSet rs=msd.searchforsafe(sql, par);
	int i=1;
	while(rs.next()){
%>
<tr>  
<th width="20%" height="30" style="font-size: 20px"><%=i%></th>  
<th width="20%" height="30" style="font-size: 20px"><%=rs.getString(1)%></th>  
<th width="20%" height="30" style="font-size: 20px"><%=rs.getString(2)%></th>
<th width="20%" height="30" style="font-size: 20px"><%=rs.getString(3)%></th>
<th width="20%" height="30" style="font-size: 20px"><%=rs.getString(4)%></th>  
</tr>
<%
i++;
}
%>
</table>
<br><br><br>
<div align="center">
<a href="main.jsp"><b>返回</b></a>
</div>
</body>
</html>