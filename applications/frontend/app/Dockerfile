ARG BASE_IMAGE=nginx:1.25-alpine
FROM ${BASE_IMAGE}

# Copy static HTML/JS into Nginx default folder
COPY . /usr/share/nginx/html/

# Create dedicated health check endpoints
RUN mkdir -p /usr/share/nginx/html/health && \
    echo "OK" > /usr/share/nginx/html/health/liveness && \
    echo "READY" > /usr/share/nginx/html/health/readiness

# Use non-root user
RUN chown -R nginx:nginx /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]