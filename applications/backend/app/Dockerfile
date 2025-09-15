ARG BASE_IMAGE=python:3.11-slim-bullseye
FROM ${BASE_IMAGE}

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .
EXPOSE 8081
CMD ["python", "app.py"]
