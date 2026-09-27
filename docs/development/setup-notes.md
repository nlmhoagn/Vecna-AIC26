# Ghi chú môi trường Vecna / AIC26

Cài dependencies theo [README](../../README.md). Các lệnh bên dưới tùy thuộc phần cứng.

## PyTorch CUDA

Ghi chú môi trường hiện có dùng CUDA 12.8 cho GPU NVIDIA tương thích:

```powershell
python -m pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu128
```

Không ép nâng NumPy riêng: requirements hiện cố định `numpy==1.26.4`. WhisperX và Faster Whisper đã nằm trong requirements; cài theo requirements trước khi xử lý xung đột môi trường.

## Segment map

Chạy từ repository sau khi đã có keyframes, Milvus và collection phù hợp:

```powershell
python aic26-src/aic26/packages/search/build_segment_map.py
```

Script hỗ trợ `KEYFRAMES_DIR`, `MILVUS_URI`, `SEGMENT_MAP_OUT`. Collection/model trong script giữ nguyên; kiểm tra chúng khớp dữ liệu đã index trước khi tạo lại `segment_map.json`.
