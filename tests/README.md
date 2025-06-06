# Test run Laravel Podman

# Step 1: Create a Pod

```sh
podman pod create --name pod-laravel -p 80:80 -p 443:443
```

# Step 3: Run the Container

```sh
podman run -d --rm \
--pod pod-laravel \
--name db -e DB_USER=testuser \
-e DB_PASSWORD=mypass \
-e DB_DATABASE=login \
-v /home/$USER/Podman/laravel/tests/data:/var/lib/myql/data:Z \
mariadb:10-alpine

podman exec -it db mysql -u testuser -d login
```
