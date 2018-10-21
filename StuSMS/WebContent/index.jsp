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
<title>登录</title>
</head>
<style type="text/css">      
     body{      
        background-image: url(image/logbackg.PNG);      
        background-size:cover;    
     }    
</style>
<script language="javascript"  type="text/javascript">
function check(){
	if(document.log.username.value==""){
		alert("请输入用户名！");
		form1.username.focus();
		return false;	
	}
	else
		onSubmit();
}
function onSubmit(){
	document.log.action="checkindex.jsp";
}
</script>
<body>


<form name="log" method="post" onSubmit="return check();">
<div align="center">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
用户登录<br><br>
用户名:<input type="text" name="username"><br><br>
密码:<input type="password" name="password"><br><br>
请选择你的身份：<br><br>
<select name="sel">
<option value="1">学生</option>
<option value="2">老师</option>
<option value="3">管理员</option>
</select><br><br>
<input type="submit" name="sub" value="登入">






</div>
</form>



</body>
</html>