FROM python:3.9-slim

WORKDIR /workspace

# Cài đặt git và curl để PlatformIO tải thư viện
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

# Cài đặt PlatformIO Core
RUN pip install -U platformio

# Sao chép file cấu hình vào trước
COPY platformio.ini .

# Tải sẵn các công cụ cần thiết
RUN pio pkg install

COPY . .

CMD ["pio", "run"]
