# Creates an image based on the PHP official image but also installs PDO for MySQL
FROM php:7.2.12-apache
RUN docker-php-ext-install pdo pdo_mysql