# Vecna / AIC26

Hệ thống truy hồi video đa phương thức dành cho AI Challenge 2026. Vecna kết hợp tìm kiếm bằng văn bản và hình ảnh, OCR/ASR, truy vấn chuỗi sự kiện, lọc cảnh giao thông và nộp kết quả qua DRES.

Package Python: `aic26` · Command line: `aic26-cli` · Web UI: React + Vite · Vector database: Milvus.

## Cài đặt

Yêu cầu Python 3.11+, Node.js 18+ và npm, Docker Desktop đang chạy, FFmpeg và Tesseract trong `PATH`. Mô hình và GPU cần phù hợp với môi trường chạy.

Mở PowerShell tại thư mục repository:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
```

Package được cài editable từ `aic26-src`.

## Chuẩn bị dữ liệu và chạy

`config.yaml` ở gốc là cấu hình hiện tại. Điều chỉnh mô hình, đường dẫn dữ liệu và cổng dịch vụ trước khi chạy.

```powershell
aic26-cli add "D:/Videos" -d -kc
aic26-cli analyse
aic26-cli index
aic26-cli --dev serve
```

Web UI phát triển mặc định: `http://localhost:5173`. Core API mặc định: `http://localhost:6900`. `aic26-cli serve` build frontend và phục vụ qua backend. Cổng thực tế phụ thuộc cấu hình.

Để tạo workspace riêng, chạy `aic26-cli init` trong thư mục mới rồi thao tác tại đó, hoặc dùng `aic26-cli -w <workspace> ...`. Sao lưu cấu hình đã tùy chỉnh trước khi chạy `init`.

## Cấu hình tùy chọn

Giữ `api_key: ""` trong cấu hình được chia sẻ. Đặt khóa Groq qua môi trường:

```powershell
$env:GROQ_API_KEY = "YOUR_GROQ_API_KEY"
```

Có thể sao chép `.env.example` thành `.env` và điền giá trị riêng. `.env` được Git bỏ qua.

- `AIC26_CAMERA_METADATA_PATH`: đường dẫn metadata camera tùy chọn.
- `AIC26_TRANSLATION_CACHE_DIR`: thư mục cache dịch tùy chọn.

Sau khi chuyển từ bản cũ, cài lại package và dùng `aic26-cli`. Cache `.cache/aic26` và khóa trình duyệt `aic26_collection` dùng tên mới; cần chọn lại collection đã lưu dưới tên cũ. Dữ liệu và collection Milvus được giữ nguyên.

## Cấu trúc

```text
Vecna-AIC/
├── aic26-src/
│   ├── aic26/
│   │   ├── cli/          # init, add, analyse, index, validate, serve
│   │   ├── packages/     # Trích xuất, chỉ mục, tìm kiếm, backend và frontend
│   │   ├── resources/    # Cấu hình mẫu và Milvus Compose
│   │   └── script/       # Tải dữ liệu
│   └── tests/
├── tools/dres/           # Cổng DRES độc lập và launcher Windows
├── docs/                 # Hướng dẫn và nghiên cứu kỹ thuật
├── report/               # Source báo cáo
├── config.yaml
├── camera_info_workspace2_road_classification.json
├── segment_map.json
├── requirements.txt
└── LICENSE
```

Hai file JSON giữ ở gốc để code hiện tại tiếp tục đọc đúng vị trí.

## Tài liệu

- [Danh mục tài liệu](docs/README.md).
- [Phím tắt](docs/frontend-shortcuts.md).
- [Phân tích dữ liệu](docs/cli-analyse.md) và [tìm kiếm](docs/searcher.md).
- [Tích hợp DRES](docs/integrations/dres.md).
- [Cổng DRES độc lập](tools/dres/README.md).
- [Ghi nhận chuẩn bị repository](docs/development/repository-preparation.md).

## Giấy phép

Phân phối theo [MIT License](LICENSE). Thông báo bản quyền của phần mềm được kế thừa được giữ nguyên; Vecna/AIC26 xác định bản dự án này.
