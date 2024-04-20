#!/bin/bash

# Install MariaDB Server
echo "Installing MariaDB Server..."
sudo yum install -y mariadb-server

# Start MariaDB service
echo "Starting MariaDB service..."
sudo systemctl start mariadb

# Enable MariaDB service to start on boot
echo "Enabling MariaDB service to start on boot..."
sudo systemctl enable mariadb

echo "MariaDB Server installation complete."

