<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Xóa User</title>
</head>
<body style="font-family:Arial;background:#f8fafc">
<div style="width:420px;margin:60px auto;background:white;padding:25px;border-radius:8px">
    <h2>Xác nhận xóa User</h2>
    <p>Tên: ${user.name}</p>
    <p>Email: ${user.email}</p>
    <p>Quốc gia: ${user.country}</p>
    <form action="${pageContext.request.contextPath}/users?action=delete" method="post">
        <input type="hidden" name="id" value="${user.id}">
        <button type="submit">Đồng ý xóa</button>
        <a href="${pageContext.request.contextPath}/users">Hủy</a>
    </form>
</div>
</body>
</html>
