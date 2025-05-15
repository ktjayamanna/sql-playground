#!/bin/bash

# Container name - consistent across all questions
CONTAINER_NAME="postgres-sql-practice"

# Check if the container is running
if ! docker ps -q -f name=^/${CONTAINER_NAME}$ | grep -q .; then
    echo "Error: Container '$CONTAINER_NAME' is not running!"
    echo "Please start the container first using ./start_container.sh"
    exit 1
fi

# Prompt for SQL file path if not provided as argument
if [ $# -eq 0 ]; then
    echo "Enter the relative path to the SQL file (e.g., matching_skills/queries/solution1.sql):"
    read SQL_FILE
else
    SQL_FILE=$1
fi

# Check if the SQL file exists
if [ ! -f "$SQL_FILE" ]; then
    echo "Error: SQL file '$SQL_FILE' not found!"
    exit 1
fi

# Run the SQL file
echo "Running SQL file: $SQL_FILE"
echo "-------------------------------------------"
docker exec -i ${CONTAINER_NAME} psql -U postgres -d postgres < "$SQL_FILE"
echo "-------------------------------------------"
echo "Query execution complete!"