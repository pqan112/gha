# Sử dụng Nginx làm server
FROM nginx:alpine

# Xóa trang web mặc định
RUN rm -rf /usr/share/nginx/html/*

# ---> BƯỚC ĐƯA THƯ MỤC VÀO IMAGE CHÍNH LÀ ĐÂY <---
COPY ./dist-deploy /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]