# Use the official Alpine image as a base
FROM alpine:latest

# Install Nginx
RUN apk --no-cache add nginx

# Copy the index.html file to the Nginx HTML directory
COPY public/index.html /usr/share/nginx/html/index.html

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]