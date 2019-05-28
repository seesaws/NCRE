<%--
  Created by IntelliJ IDEA.
  User: Linran
  Date: 2019/4/29
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Spring Boot Sample</title>
</head>
<body>
<table>
    <th>工号</th>
    <th>用户名</th>
    <th>姓名</th>
    <th>性别</th>
    <th>生日</th>
    <th>电话</th>
    <th>地址</th>
    <th>创建时间</th>
    <tr th:each="user : ${users}">
        <td th:text="${user.id}"></td>
        <td th:text="${user.userCode}"></td>
        <td th:text="${user.userName}"></td>
        <td th:text="${user.gender}"></td>
        <td th:text="${user.birthday}"></td>
        <td th:text="${user.phone}"></td>
        <td th:text="${user.address}"></td>
        <td th:text="${user.createdBY}"></td>
    </tr>
</table>
</body>
</html>
