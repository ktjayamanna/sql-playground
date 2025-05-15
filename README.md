# SQL Practice Repository

This repository contains SQL practice questions organized in separate folders. Each folder has its own start_container.sh script that resets and populates a shared PostgreSQL container.

## Structure

```
sql/
├── README.md
├── Dockerfile                  # Docker configuration for PostgreSQL
├── matching_skills/            # Example question folder
│   ├── start_container.sh      # Script to reset and start the container
│   ├── problem.md              # Problem description
│   ├── queries/                # Folder containing SQL files
│   │   ├── add_data.sql        # Schema and data for the question
│   │   ├── solution1.sql       # One approach to solving the problem
│   │   └── solution2.sql       # Alternative approach to solving the problem
│   └── solution.sql            # Main solution to the question
└── ...                         # Additional question folders
```

## How to Use

1. Navigate to a question folder:
   ```
   cd matching_skills
   ```

2. Start the PostgreSQL container:
   ```
   ./start_container.sh
   ```
   This will:
   - Stop and remove the existing PostgreSQL container if it exists
   - Start a new PostgreSQL container with the name `postgres-sql-practice`
   - Load the schema and data from queries/add_data.sql

3. Write your solution in solution.sql

4. Run your solution:
   ```
   docker exec -i postgres-sql-practice psql -U postgres -d postgres < solution.sql
   ```

5. When you're done, you can stop the container:
   ```
   docker stop postgres-sql-practice
   ```

## Adding New Questions

To add a new question:
1. Create a new folder for your question
2. Create a queries subfolder with add_data.sql
3. Copy the start_container.sh script from an existing question
4. Create a solution.sql file for your answer
# sql-playground
