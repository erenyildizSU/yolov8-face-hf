# Base image
FROM python:3.10-slim

RUN apt-get update && apt-get install -y libgl1-mesa-glx && rm -rf /var/lib/apt/lists/*

# Çalışma klasörü
WORKDIR /app

# Gerekli dosyaları kopyala
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Diğer her şeyi kopyala (model, app.py, data.yaml)
COPY . .

# Gradio'nun düzgün çalışması için
EXPOSE 7860

# Uygulamayı başlat
CMD ["python", "app.py"]
