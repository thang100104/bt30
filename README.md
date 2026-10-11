# BT30 - Gọi MySQL Stored Procedures từ JDBC

Bài thực hành cập nhật ứng dụng quản lý User để sử dụng **CallableStatement** gọi Stored Procedures trong MySQL.

## Chức năng chính
- Hiển thị danh sách User
- Thêm User bằng Stored Procedure `insert_user`
- Lấy User theo ID bằng Stored Procedure `get_user_by_id`
- Sửa User
- Xóa User

## Stored Procedures
File `database.sql` chứa:
- `get_user_by_id(IN user_id INT)`
- `insert_user(IN user_name, IN user_email, IN user_country)`

## Cấu hình MySQL
Mở:

`src/main/java/com/codegym/dao/UserDAO.java`

và sửa:

```java
private final String jdbcUsername = "root";
private final String jdbcPassword = "password";
```

cho đúng tài khoản MySQL trên máy.

## Build
```bash
mvn clean package
```

File WAR:
`target/user-management.war`

## Chạy
Deploy WAR lên Tomcat 10.1+ và truy cập:

`http://localhost:8080/user-management/users`
