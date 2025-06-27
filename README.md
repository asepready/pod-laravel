# Implementation Podman v5.4.0

<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

# Laravel Starter Kit

- Laravel
- PHP-FPM
- MySQL
- MariaDB
- PostgreSQL
- pgAdmin
- phpMyAdmin
- Mailpit
- Redis

# How To Deploy

### For first time only !

- `git clone https://github.com/podmanbest/laravel.git`
- `cd laravel`
- `podman compose up -d --build`
- `podman compose exec php bash`
- `composer setup`
- `php artisan key:generate`

### From the second time onwards

- `podman compose up -d`

### Laravel App

- URL: http://localhost

### Mailpit

- URL: http://localhost:8025

### phpMyAdmin

- URL: http://localhost:8080
- Server: `db`
- Username: `larauser`
- Password: `larapass`
- Database: `laraveldb`

### Adminer

- URL: http://localhost:9081
- Server: `db`
- Username: `larauser`
- Password: `larapass`
- Database: `laraveldb`

### Basic docker compose commands

- Build or rebuild services
  - `docker compose build`
- Create and start containers
  - `docker compose up -d`
- Stop and remove containers, networks
  - `docker compose down`
- Stop all services
  - `docker compose stop`
- Restart service containers
  - `docker compose restart`
- Run a command inside a container
  - `docker compose exec [container] [command]`

### Useful Laravel Commands

- Display basic information about your application
  - `php artisan about`
- Remove the configuration cache file
  - `php artisan config:clear`
- Flush the application cache
  - `php artisan cache:clear`
- Clear all cached events and listeners
  - `php artisan event:clear`
- Delete all of the jobs from the specified queue
  - `php artisan queue:clear`
- Remove the route cache file
  - `php artisan route:clear`
- Clear all compiled view files
  - `php artisan view:clear`
- Remove the compiled class file
  - `php artisan clear-compiled`
- Remove the cached bootstrap files
  - `php artisan optimize:clear`
- Delete the cached mutex files created by scheduler
  - `php artisan schedule:clear-cache`
- Flush expired password reset tokens
  - `php artisan auth:clear-resets`
