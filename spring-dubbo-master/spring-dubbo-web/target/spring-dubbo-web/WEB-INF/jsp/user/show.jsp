<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%--导入jstl标签库--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>查看用户详细信息</title>
    <style>
        table {border:1px solid #000000}
        table th{border:1px solid #000000}
        table td{border:1px solid #000000}
    </style>
</head>
<body>

<table cellpadding="0" cellspacing="0" width="80%">
    <tbody>
    <tr>
        <td colspan="3">用户详细信息：</td>
    </tr>
    <tr  style="color: red;">
        <td style="padding-left: 80px;">用户名称：${user.username}</td>
        <td style="padding-left: 80px;">邮箱：${user.email}</td>
        <td style="padding-left: 80px;">联系电话：${user.phoneNum}</td>
    </tr>
    <tr>
        <td colspan="3">用户拥有角色信息：</td>
    </tr>
    <c:forEach items="${user.roleList}" var="role">
        <tr  style="color: red;">
            <td style="padding-left: 80px;">
                    ${role.roleName }
            </td>
            <td colspan="2">${role.roleDesc }</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>

</html>