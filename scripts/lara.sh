# Remove old images
podman rmi -f nginx 2>/dev/null || true

# build images
podman build -t nginx ./../containers/nginx

podman run --name nginx -t \
  -d nginx:stable-alpine-perl