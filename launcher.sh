#!/bin/bash

# Build and start both containers using Docker Compose
docker compose up --build -d

# Wait for a while to ensure MSSQL Server is up and running before connecting sqlcmd -S localhost -U sa -P 'Un!q@to2023' -d
sleep 20
docker exec mssql-container sqlcmd -S localhost -U sa -P 'Un!q@to2023' -d master -i create-db.sql 
echo "created database"
# Display container status
sleep 60
docker compose ps