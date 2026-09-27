# Vecna / AIC26 — Python package

Package `aic26` cung cấp pipeline nhập video, phân tích đặc trưng, tạo chỉ mục Milvus, truy hồi và chạy Web UI.

Từ thư mục này:

```powershell
python -m pip install -e .
aic26-cli --help
```

Các lệnh: `init`, `add`, `analyse`, `index`, `validate`, `serve`. Chạy trong workspace chứa `config.yaml`, hoặc dùng `aic26-cli -w <workspace> ...`.

Xem [README repository](../README.md) để cài đủ dependencies. Backend, frontend và resources giữ cùng package để CLI tìm đúng vị trí.

Phân phối theo [MIT License](LICENSE), giữ nguyên thông báo bản quyền của phần kế thừa.
