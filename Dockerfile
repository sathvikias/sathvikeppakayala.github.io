# Use nginx to serve static HTML
FROM nginx:alpine

# Remove default nginx content and use the repository content as the web root
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*

# Copy everything from the repo into nginx web root
COPY . .

# Expose HTTP port
EXPOSE 80

# (nginx image already has a suitable CMD to run nginx in foreground)
