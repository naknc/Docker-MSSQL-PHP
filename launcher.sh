#!/bin/bash

# Build and start both containers using Docker Compose
docker compose up --build -d

# Wait for a while to ensure MSSQL Server is up and running before connecting sqlcmd -S localhost -U sa -P 'Un!q@to2023' -d
sleep 20
# now execute this command to create any db other than master. Seems hacky though :D
docker exec mssql-container sqlcmd -S localhost -U sa -P 'Un!q@to2023' -d master -i create-db.sql 
echo "Created Database"

# Display container status
docker compose ps