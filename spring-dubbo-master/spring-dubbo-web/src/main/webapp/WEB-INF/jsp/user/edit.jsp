<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改用户信息</title>
    <style>
        table {border:1px solid #000000}
        table th{border:1px solid #000000}
        table td{border:1px solid #000000}
    </style>
</head>
<body>
<form id="userForm"
      action="${pageContext.request.contextPath }/edit.do"  method="post">
    修改信息：
    <table cellpadding="0" cellspacing="0" width="80%">
        <input type="hidden" name="id" value="${user.id}"/>
        <tr>
            <td>用户名称</td>
            <td><input type="text" name="username" value="${user.username}" /></td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><input type="text" name="email" value="${user.email}" /></td>
        </tr>
        <tr>
            <td>联系电话</td>
            <td><input type="text" name="phoneNum" value="${user.phoneNum}" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="修改" />
            </td>
        </tr>
    </table>

</form>
</body>

</html>