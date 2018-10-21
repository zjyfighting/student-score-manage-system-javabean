<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加老师信息</title>
</head>
<style type="text/css">      
     body{      
        background-image: url(image/mainbg.jpg);      
        background-size:cover;    
     }    
</style>
<body>
<form action="addteaback.jsp" method="post">

<table align="center" width="50%"  border="1" >

<caption style="font-size: 30px"><b>添加老师信息</b></caption>

  <tr>
    <th width="30%" height="50" style="font-size: 24px">工号：</th>
    <td width="70%"><input name="tea_num" type="text"></td>
  </tr>

  <tr>
    <th height="50" style="font-size: 24px">姓名：</th>
    <td><input name="tea_name" type="text"></td>
  </tr>

  <tr>
    <th colspan="2">
    <input type="submit" name="submit" value="添加">
    <input type="reset"  value="重置">
    <a href="main_man.jsp">返回</a>
    </th>
  </tr>

</table>

</form> 







</body>
</html>