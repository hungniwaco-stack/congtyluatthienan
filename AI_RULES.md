# AI RULES & MEMORY (Học từ phiên làm việc trước)

Tệp này lưu trữ các sở thích, thói quen và quy tắc đã được AI ghi nhận từ người dùng để áp dụng cho các dự án và phiên làm việc sau, giúp tăng tốc độ làm việc mà không cần hỏi lại.

## 1. Phong cách Thiết kế (UI/UX)
- **Aesthetics (Thẩm mỹ):** Ưa chuộng phong cách sang trọng, chuyên nghiệp, hiện đại (Premium, Luxury). Luôn có hiệu ứng chuyển động mượt mà (micro-animations, smooth scroll, hover effects).
- **Màu sắc & Phông chữ:** Đối với các ngành nghề cần sự uy tín (như Luật), sử dụng tone màu **Xanh Navy Tối (Navy Slate)** kết hợp **Vàng kim (Luxury Gold)**. Font chữ kết hợp giữa Serif (như `Playfair Display` cho tiêu đề) và Sans-serif (như `Inter` cho văn bản).
- **Hình ảnh:** Tránh lạm dụng các bộ lọc (`filter: invert`, `brightness`) đối với Logo nếu chưa chắc chắn Logo có nền trong suốt hay không. Hạn chế dùng ảnh placeholder có mặt người thật (như ảnh Unsplash) ở các vị trí quan trọng để tránh gây hiểu nhầm; nếu dùng, phải ghi chú rõ ràng. Chú ý viết đúng hoa/thường tên file ảnh (VD: `Avatar.jpg` vs `avatar.jpg`) để không bị lỗi khi đưa lên server.

## 2. Quy trình Kỹ thuật & Triển khai
- **Môi trường:** Người dùng sử dụng Windows (PowerShell/CMD).
- **Quản lý mã nguồn:** Tích hợp Git và GitHub. Tự động sử dụng cấu hình git mặc định:
  - Github User: `hungniwaco-stack`
  - Email: `hungniwaco-stack@users.noreply.github.com`
  - Branch chính: `main`
- **Triển khai (Deployment):** Ưu tiên triển khai trực tiếp từ kho lưu trữ GitHub lên **Vercel** bằng tính năng Clone/Deploy tự động của Vercel thay vì chạy lệnh CLI phức tạp.

## 3. Giao tiếp
- **Ngôn ngữ:** Luôn giao tiếp bằng Tiếng Việt một cách tự nhiên, thân thiện và chuyên nghiệp.
- **Xử lý vấn đề:** Chủ động đưa ra giải pháp (ví dụ: tự động chạy local server hoặc mở `explorer.exe` khi file không tự bật lên được).
