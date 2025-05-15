#!/bin/bash

# Container name - consistent across all questions
CONTAINER_NAME="postgres-sql-practice"

# Prompt for folder name if not provided as argument
if [ $# -eq 0 ]; then
    echo "Enter the folder name (e.g., matching_skills):"
    read FOLDER_NAME
else
    FOLDER_NAME=$1
fi

# Check if the folder exists
if [ ! -d "$FOLDER_NAME" ]; then
    echo "Error: Folder '$FOLDER_NAME' not found!"
    exit 1
fi

# Check if the add_data.sql file exists
if [ ! -f "$FOLDER_NAME/queries/add_data.sql" ]; then
    echo "Error: File '$FOLDER_NAME/queries/add_data.sql' not found!"
    exit 1
fi

# Stop and remove existing container if it exists
if [ "$(docker ps -aq -f name=^/${CONTAINER_NAME}$)" ]; then
    echo "Stopping and removing existing container: ${CONTAINER_NAME}"
    docker stop ${CONTAINER_NAME} > /dev/null
    docker rm ${CONTAINER_NAME} > /dev/null
fi

# Start a new PostgreSQL container
echo "Starting new PostgreSQL container: ${CONTAINER_NAME}"
docker run --name ${CONTAINER_NAME} \
    -e POSTGRES_PASSWORD=postgres \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_DB=postgres \
    -p 5432:5432 \
    -d postgres:14

# Wait for PostgreSQL to start
echo "Waiting for PostgreSQL to start..."
sleep 5

# Load data from the specified folder's add_data.sql
echo "Loading data from $FOLDER_NAME/queries/add_data.sql..."
docker exec -i ${CONTAINER_NAME} psql -U postgres -d postgres < "$FOLDER_NAME/queries/add_data.sql"

echo "Container setup complete!"
echo "Container: ${CONTAINER_NAME}"
echo "Port: 5432"
echo "Database: postgres"
echo "User: postgres"
echo "Password: postgres"
echo ""
echo "Connect using: psql -h localhost -p 5432 -U postgres -d postgres"
echo "Or run your solution with: docker exec -i ${CONTAINER_NAME} psql -U postgres -d postgres < $FOLDER_NAME/solution.sql"
echo ""
echo "To run a specific query from the queries folder:"
echo "docker exec -i ${CONTAINER_NAME} psql -U postgres -d postgres < $FOLDER_NAME/queries/your_query.sql"
