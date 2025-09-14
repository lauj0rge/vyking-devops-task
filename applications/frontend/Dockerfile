ARG BASE_IMAGE=nginx:1.25-alpine
FROM ${BASE_IMAGE}

# Copy static HTML/JS into Nginx default folder
COPY html/ /usr/share/nginx/html/

# Expose port
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
