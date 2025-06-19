# check if podman is installed
podman pod stop laravel 2>/dev/null || true
if podman pod exists laravel; then
  podman pod rm -f laravel
fi

# Remove old images
podman rmi -f php 2>/dev/null || true

# build images
podman build -t php ./containers/php
#podman build -t node ./containers/node

# create from kube yaml
podman play kube ./laravel.yaml
