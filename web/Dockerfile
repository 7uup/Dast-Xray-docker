FROM nginx:alpine

# 删除默认 html
RUN rm -rf /usr/share/nginx/html/*

# 拷贝打包好的 Vue 文件
COPY dist/ /usr/share/nginx/html/

# 拷贝完整的 nginx 配置
COPY nginx.conf /etc/nginx/nginx.conf

# 容器对外端口
EXPOSE 9528

# 直接指定配置文件启动
CMD ["nginx", "-g", "daemon off;", "-c", "/etc/nginx/nginx.conf"]
