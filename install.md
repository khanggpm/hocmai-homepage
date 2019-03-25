HƯỚNG DẪN CÀI ĐẶT
=================
1. Copy source code
2. đổi _config -> config
3. Sửa các thông số trong:
- config/app.php:
url : tên url của trang web
- config/database.php: thiet lap thong tin csdl
4. đổi .htaccess.default -> .htaccess, cấu hình thông số trong .htaccess để phù hợp với host
5. import các file database từ /db vào trong csdl
6. Đổi tên _storage -> storage, set permission cho storage là 777
7. Giải nén storage/app/media/media.tar.gz

Done and enjoy!
======