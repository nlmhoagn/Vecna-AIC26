# Chuẩn bị repository Vecna / AIC26

Package và folder dùng `aic26` / `aic26-src`; CLI dùng `aic26-cli`. Imports, tests, biến môi trường, cache, metadata npm và tài liệu được đổi đồng bộ. Source chỉ sửa namespace và chuỗi nhận diện; giữ nguyên thuật toán, endpoint, mô hình, trọng số, cổng và luồng nộp bài.

Setuptools tìm toàn bộ subpackages, đóng gói frontend/resources; console entry point trỏ tới `aic26.cli.__main__:main`.

Công cụ DRES nằm ở `tools/dres/`, tài liệu tích hợp ở `docs/integrations/`, ghi chú ở `docs/development/`. Launcher chuyển vào thư mục của chính nó. Modules và tests giữ độ sâu để đường dẫn tính từ `__file__` tiếp tục đúng. Metadata camera và segment map giữ ở gốc.

PDF báo cáo và sơ đồ cũ được giữ trong `archive/`, bỏ qua khi đưa lên Git theo mặc định. Chúng là bản trước khi đổi tên, không phải PDF xuất từ source hiện tại.

README dùng Vecna và không tự gán tên cá nhân, GitHub hay URL chưa xác nhận. Danh sách contributor và URL cài của README cũ được thay bằng hướng dẫn cài bản local. Giữ nguyên giấy phép MIT và thông báo bản quyền.

Khóa Groq ghi trực tiếp được bỏ khỏi cấu hình chia sẻ. Dùng `GROQ_API_KEY` hoặc `.env` riêng. Bản sao lưu ngoài repository vẫn chứa cấu hình gốc; giữ riêng và thu hồi khóa cũ trước khi công khai.

## Kiểm tra trong môi trường đầy đủ

Xem [kết quả kiểm tra bản hiện tại](validation.md).

```powershell
python -m pip install -e ./aic26-src
aic26-cli --help
python -m unittest discover -s aic26-src/tests
cd aic26-src/aic26/packages/webui/frontend
npm ci
npm run build
```

Kiểm tra build và namespace không xác nhận việc tải mô hình, kết nối Milvus hay nộp DRES. Chạy toàn bộ pipeline với dữ liệu thực trước khi triển khai.
