<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm mới User</title>
</head>
<body style="font-family:Arial;background:#f8fafc">
<div style="width:420px;margin:60px auto;background:white;padding:25px;border-radius:8px">
    <h2>Thêm mới User</h2>
    <form action="${pageContext.request.contextPath}/users?action=create" method="post">
        <p>Tên:</p>
        <input style="width:100%;padding:9px" type="text" name="name" required>
        <p>Email:</p>
        <input style="width:100%;padding:9px" type="email" name="email" required>
        <p>Quốc gia:</p>
        <input style="width:100%;padding:9px" type="text" name="country" required>
        <p><button type="submit">Lưu User</button></p>
    </form>
    <a href="${pageContext.request.contextPath}/users">Quay lại</a>
</div>
</body>
</html>
