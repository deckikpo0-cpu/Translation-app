# Use official Nginx image
FROM nginx:alpine

# Set maintainer (optional)
LABEL maintainer="yourname@example.com"

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your app into Nginx folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 8080

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
