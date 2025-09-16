ARG BASE_IMAGE=nginx:1.25-alpine
FROM ${BASE_IMAGE}

# Copy static HTML/JS into Nginx default folder
COPY html/ /usr/share/nginx/html/

# Add health endpoints
RUN echo "OK" > /usr/share/nginx/html/health \
 && echo "READY" > /usr/share/nginx/html/ready

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
