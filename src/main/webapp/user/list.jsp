<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý User</title>
    <style>
        body{font-family:Arial,sans-serif;margin:30px;background:#f8fafc}
        h2{text-align:center;color:#1b2a7a}
        table{width:80%;margin:20px auto;border-collapse:collapse;background:white}
        th,td{border:1px solid #ddd;padding:12px}
        th{background:#1b2a7a;color:white}
        .btn{padding:8px 12px;text-decoration:none;border-radius:4px;color:white;font-weight:bold}
        .add{background:#27ae60}.edit{background:#2980b9}.delete{background:#c0392b}
    </style>
</head>
<body>
<h2>Danh Sách Người Dùng</h2>
<div style="width:80%;margin:auto">
    <a href="${pageContext.request.contextPath}/users?action=create" class="btn add">Thêm mới User</a>
</div>

<table>
    <tr>
        <th>ID</th><th>Tên</th><th>Email</th><th>Quốc gia</th><th>Hành động</th>
    </tr>

    <c:forEach var="user" items="${listUser}">
        <tr>
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.name}"/></td>
            <td><c:out value="${user.email}"/></td>
            <td><c:out value="${user.country}"/></td>
            <td>
                <a class="btn edit" href="${pageContext.request.contextPath}/users?action=edit&id=${user.id}">Edit</a>
                <a class="btn delete" href="${pageContext.request.contextPath}/users?action=delete&id=${user.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
