# Kiểm tra bản Vecna / AIC26

Kiểm tra ngày 27/09/2026:

- Đối chiếu 104 file Python/JavaScript/JSX với bản sao lưu trước khi sửa: chỉ đổi namespace, chuỗi nhận diện và tiêu đề ứng dụng. Không thay đổi logic.
- Python syntax hợp lệ. Hai file JSON dữ liệu và giấy phép giữ nguyên bytes.
- Không còn tên package cũ trong các file đang sử dụng. Không còn khóa Groq ghi trực tiếp trong bản cấu hình chia sẻ.
- `python -m aic26.cli --help` chạy được và hiển thị đủ sáu commands.
- `npm ci` và `npm run build` thành công; Vite còn cảnh báo kích thước bundle và Browserslist cũ.
- Build wheel thành công; kiểm tra đủ modules, frontend source, resources và entry point `aic26-cli`. Không chứa `node_modules`, tests hay frontend build sinh ra khi kiểm tra.
- Các liên kết tài liệu tương đối trỏ đến file tồn tại.
- Bộ unittest hiện có: 70/71 đạt, cả khi dùng cache dịch mới. `test_error_response_not_cached_and_fallbacks` giả lập GoogleTranslator nhưng code còn dùng Chrome API/MyMemory trước nó, nên trả về bản dịch thật thay vì giá trị test mong đợi. Source và test dịch giữ nguyên ngoài tên package.
- Source báo cáo đã đổi nhận diện. Trình biên dịch LaTeX trong app báo `Unable to find standard directories for platform`; chưa xác nhận compilation hay xuất PDF mới. PDF cũ được giữ riêng trong `report/archive/`.

Kiểm tra Python dùng môi trường Python 3.11 hiện có với `PYTHONPATH` trỏ tới package mới và tắt ghi bytecode. Không cài đặt hoặc sửa package ở folder draft. Build wheel và kiểm tra syntax dùng Python 3.14 có sẵn.

Chưa chạy toàn bộ pipeline với dữ liệu thực, tải mô hình, khởi động Milvus hoặc nộp bài DRES.
