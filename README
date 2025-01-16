# 🐳 Caddy Docker 镜像（自定义版）

这是一个包含多个扩展功能的 **Caddy 服务器 Docker 镜像**。此镜像已集成以下插件：

- `github.com/caddy-dns/cloudflare`：支持 Cloudflare DNS 解析
- `github.com/greenpau/caddy-security`：增强安全性功能
- `github.com/greenpau/caddy-git`：支持 Git 集成
- `github.com/greenpau/caddy-trace`：支持请求追踪
- `github.com/caddyserver/transform-encoder`：支持日志格式转换

---

## 🚀 快速开始

使用以下命令运行自定义版 Caddy-CF 镜像：

```bash
docker run -d \
  --name caddy \
  --network host \
  -v /root/apps/caddy/caddyfile:/etc/caddy \
  -v /root/apps/caddy/websites:/srv \
  -v /root/apps/caddy/logs:/var/log/caddy \
  -v /root/apps/caddy/data:/data \
  melosbot/caddy:latest
```

---

## 🐙 Docker Compose 配置

以下是 `compose.yaml` 文件示例：

```yaml
services:
  caddy:
    image: melosbot/caddy:latest
    container_name: caddy
    network_mode: host
    volumes:
      - /root/apps/caddy/caddyfile:/etc/caddy
      - /root/apps/caddy/websites:/srv
      - /root/apps/caddy/logs:/var/log/caddy
      - /root/apps/caddy/data:/data
    restart: unless-stopped
```

---

## ⚙️ 配置说明

1. **网络模式**  
   使用 `host` 网络模式，直接使用主机的网络栈。

2. **挂载目录**  
   - `/caddy/caddyfile`：挂载 Caddy 配置文件目录
   - `/caddy/websites`：挂载网站文件目录
   - `/caddy/logs`：挂载日志目录
   - `/caddy/data`：挂载数据目录

3. **插件支持**  
   镜像已集成以下插件：
   - `github.com/caddy-dns/cloudflare`：支持 Cloudflare DNS 解析
   - `github.com/greenpau/caddy-security`：增强安全性功能
   - `github.com/greenpau/caddy-git`：支持 Git 集成
   - `github.com/greenpau/caddy-trace`：支持请求追踪
   - `github.com/caddyserver/transform-encoder`：支持日志格式转换

---

## 🔗 源码与更多信息

此镜像是基于 **[liuweitao/DockerHub-AutoBuild](https://github.com/liuweitao/DockerHub-AutoBuild)** 项目修改构建的。更多信息和更新，请访问 GitHub 仓库。
