#!/bin/bash

# Update phpbrew
phpbrew self-update

# Install php5.4
phpbrew install php-5.4.45 +mysql +pdo +sqlite +json +curl

# Install php5.5
phpbrew install php-5.5.38 +mysql +pdo +sqlite +json +curl

# Install php5.6
phpbrew install php-5.6.24 +mysql +pdo +sqlite +json +curl

# Install php7
phpbrew install php-7.0.9 +mysql +pdo +sqlite +json +curl

# Use the latest stable version
phpbrew use 5.6.24
