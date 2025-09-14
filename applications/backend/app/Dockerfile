ARG BASE_IMAGE=python:3.11-slim-bullseye
FROM ${BASE_IMAGE}

# Set working dir
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY app.py .

# Expose port
EXPOSE 8081

# Run app
CMD ["python", "app.py"]
