# Python 3.9 imajını baz al
FROM python:3.9

# Çalışma dizini belirle
WORKDIR /app

# requirements.txt dosyasını kopyala
COPY requirements.txt requirements.txt

# Gerekli Python paketlerini yükle
RUN pip install -r requirements.txt

# Tüm dosyaları kopyala
COPY . .

# Uygulamayı başlat
CMD ["python", "app.py"]
