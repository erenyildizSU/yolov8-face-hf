# Python 3.10 bazlı hafif imaj
FROM python:3.10-slim

# OpenCV'nin çalışması için eksik kütüphane
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*


# Uygulama klasörünü oluştur
WORKDIR /app

# requirements.txt dosyasını kopyala ve bağımlılıkları yükle
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Geri kalan tüm dosyaları kopyala (app.py, model, YAML vs.)
COPY . .

# Gradio arayüzü için portu aç
EXPOSE 7860

# Uygulamayı başlat
CMD ["python", "app.py"]
