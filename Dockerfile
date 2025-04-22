FROM python:3.9-slim

# Install system dependencies needed by OpenCV
RUN apt-get update && apt-get install -y libgl1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
