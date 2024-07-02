# Используем базовый образ Python
FROM python:3.8-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл app.py в контейнер
COPY app.py .

# Команда для запуска приложения
CMD ["python", "app.py"]
