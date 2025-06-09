# check if podman is installed
podman pod stop laravel 2>/dev/null || true
if podman pod exists laravel; then
  podman pod rm -f laravel
fi

# Remove old images
podman rmi -f php-apps 2>/dev/null || true

# build images
podman build -t php-apps ./.docker/php

# create from kube yaml
podman play kube ./pods.yaml
