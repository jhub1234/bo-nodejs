FROM node:18-bullseye-slim
# 安装脚本所需的底层系统级工具
RUN apt-get update && apt-get install -y curl openssl procps && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]
