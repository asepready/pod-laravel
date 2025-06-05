<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

# Laravel Podman Starter Kit

-   Laravel v9.x
-   PHP v8.0.2.x
-   MySQL v8.1.x (default)
-   pgAdmin v4.x
-   phpMyAdmin v5.x
-   Mailpit v1.x
-   Node.js v18.x
-   NPM v10.x
-   Yarn v1.x
-   Vite v5.x
-   Rector v1.x
-   Redis v7.2.x

# How To Deploy

### For first time only !

-   `git clone https://github.com/podmanbest/laravel.git`
-   `cd laravel`
-   `podman compose up -d --build`
-   `podman compose exec php bash`
-   `composer setup`

### From the second time onwards

-   `podman compose up -d`

# Notes

### Laravel Versions

-   [Laravel 9.x](https://github.com/asepready/pod-laravel/tree/main)
-   [Laravel 9.x](https://github.com/asepready/pod-laravel/tree/laravel_10x)

### Laravel App

-   URL: http://localhost

### Mailpit

-   URL: http://localhost:8025

### phpMyAdmin

-   URL: http://localhost:8080
-   Server: `db`
-   Username: `larauser`
-   Password: `larapass`
-   Database: `laraveldb`

### Adminer

-   URL: http://localhost:9090
-   Server: `db`
-   Username: `larauser`
-   Password: `larapass`
-   Database: `laraveldb`

### Basic podman compose commands

-   Build or rebuild services
    -   `podman compose build`
-   Create and start containers
    -   `podman compose up -d build`
-   Stop and remove containers, networks
    -   `podman compose down`
-   Stop all services
    -   `podman compose stop`
-   Restart service containers
    -   `podman compose restart`
-   Run a command inside a container
    -   `podman compose exec [container] [command]`

### Useful Laravel Commands

-   Display basic information about your application
    -   `php artisan about`
-   Remove the configuration cache file
    -   `php artisan config:clear`
-   Flush the application cache
    -   `php artisan cache:clear`
-   Clear all cached events and listeners
    -   `php artisan event:clear`
-   Delete all of the jobs from the specified queue
    -   `php artisan queue:clear`
-   Remove the route cache file
    -   `php artisan route:clear`
-   Clear all compiled view files
    -   `php artisan view:clear`
-   Remove the compiled class file
    -   `php artisan clear-compiled`
-   Remove the cached bootstrap files
    -   `php artisan optimize:clear`
-   Delete the cached mutex files created by scheduler
    -   `php artisan schedule:clear-cache`
-   Flush expired password reset tokens
    -   `php artisan auth:clear-resets`

### Laravel Pint (Code Style Fixer | PHP-CS-Fixer)

-   Format all files
    -   `vendor/bin/pint`
-   Format specific files or directories
    -   `vendor/bin/pint app/Models`
    -   `vendor/bin/pint app/Models/User.php`
-   Format all files with preview
    -   `vendor/bin/pint -v`
-   Format uncommitted changes according to Git
    -   `vendor/bin/pint --dirty`
-   Inspect all files
    -   `vendor/bin/pint --test`

### Rector

-   Dry Run
    -   `vendor/bin/rector process --dry-run`
-   Process
    -   `vendor/bin/rector process`

# Alternatives

-   [Laravel Sail](https://laravel.com/docs/master/sail)
-   [Laravel Herd](https://herd.laravel.com/)
-   [Laradock](https://laradock.io/)
