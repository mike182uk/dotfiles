#!/bin/bash

# Update phpbrew
phpbrew self-update

# Install php5.3
phpbrew install php-5.3.29 +mysql +pdo +sqlite

# Install php5.4
phpbrew install php-5.4.42 +mysql +pdo +sqlite

# Install php5.5
phpbrew install php-5.5.26 +mysql +pdo +sqlite

# Install php5.6
phpbrew install php-5.6.10 +mysql +pdo +sqlite

# Install php7
phpbrew install next as php-7.0.0 +mysql +pdo +sqlite

# Use the latest stable version
phpbrew use 5.6.10
