<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--导入jstl标签库--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户列表jsp页面</title>
    <style>
        table {border:1px solid #000000}
        table th{border:1px solid #000000}
        table td{border:1px solid #000000}
    </style>
</head>
<body>
    用户列表：
    <table cellpadding="0" cellspacing="0" width="80%">
        <tr>
            <th>用户Id</th>
            <th>用户名称</th>
            <th>邮箱</th>
            <th>联系电话</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${userList}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.email}</td>
                <td>${user.phoneNum}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/get.do?id=${user.id}">修改</a>
                    <a href="${pageContext.request.contextPath}/show.do?id=${user.id}">查看</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

