#!/usr/bin/env bash

# Update phpbrew
phpbrew self-update

# Install php5.4
phpbrew install php-5.4 +mysql +pdo +sqlite +json +curl

# Install php5.5
phpbrew install php-5.5 +mysql +pdo +sqlite +json +curl

# Install php5.6
phpbrew install php-5.6 +mysql +pdo +sqlite +json +curl

# Install php7
phpbrew install php-7.0 +mysql +pdo +sqlite +json +curl

# Install php7.1
phpbrew install php-7.1 +mysql +pdo +sqlite +json +curl

# Use latest version of php globally
LATEST_VERSION=$(phpbrew list | head -n 1 | grep -o "php-[0-9].*")
phpbrew switch $LATEST_VERSION

# Install apps
phpbrew app get composer
phpbrew app get box-2.5

# Update installed apps
composer self-update
box update -u
