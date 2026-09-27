# Vecna / AIC26 — DRES portal

Cổng nộp bài độc lập gồm `dres_submitter.html` và proxy `submitter_server.py`. Giữ hai file cùng thư mục.

Trên Windows, mở `open_submitter.bat`. Launcher chuyển vào thư mục của chính nó nên có thể chạy từ Explorer hoặc thư mục khác.

Hoặc chạy từ repository:

```powershell
python tools/dres/submitter_server.py 8080
```

Trang mở tại `http://localhost:8080/dres_submitter.html`. Proxy hiện dùng `https://eventretrieval.one`; xác thực và nộp bài được giữ nguyên. Dừng bằng `Ctrl+C`.

Xem [tài liệu tích hợp](../../docs/integrations/dres.md) cho Web UI chính.
