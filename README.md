# SQL Practice Repository

This repository contains SQL practice questions organized in separate folders. Each folder has its own problem statement and data, and a shared PostgreSQL container is used for all questions.

## Structure

```
sql/
├── README.md
├── Dockerfile                  # Docker configuration for PostgreSQL
├── start_container.sh          # Script to reset and start the container
├── run_query.sh                # Script to run SQL queries
├── add_problem.sh              # Script to create new problem folders
├── matching_skills/            # Example problem folder
│   ├── problem.md              # Problem description
│   ├── solution.sql            # Main solution to the problem
│   └── queries/                # Folder containing SQL files
│       ├── add_data.sql        # Schema and data for the problem
│       ├── solution1.sql       # One approach to solving the problem
│       ├── solution2.sql       # Alternative approach to solving the problem
│       └── solution3.sql       # Another approach to solving the problem
└── ...                         # Additional problem folders
```

## How to Use

1. Start the PostgreSQL container from the root folder:
   ```
   ./start_container.sh
   ```

   When prompted, enter the problem folder name (e.g., `matching_skills`).

   Alternatively, you can specify the folder name directly:
   ```
   ./start_container.sh matching_skills
   ```

   This will:
   - Stop and remove the existing PostgreSQL container if it exists
   - Start a new PostgreSQL container with the name `postgres-sql-practice`
   - Load the schema and data from the specified folder's queries/add_data.sql

2. Write your solution in the problem folder's solution.sql file

3. Run your solution using the run_query.sh script:
   ```
   ./run_query.sh
   ```

   When prompted, enter the path to your SQL file (e.g., `matching_skills/solution.sql`).

   Alternatively, you can specify the SQL file directly:
   ```
   ./run_query.sh matching_skills/solution.sql
   ```

4. To run a specific query from the queries folder:
   ```
   ./run_query.sh matching_skills/queries/solution1.sql
   ```

5. When you're done, you can stop the container:
   ```
   docker stop postgres-sql-practice
   ```

## Adding New Problems

To add a new problem, use the add_problem.sh script:
```
./add_problem.sh
```

When prompted, enter a name for the new problem folder (e.g., `join_tables`).

Alternatively, you can specify the problem name directly:
```
./add_problem.sh join_tables
```

This will create a new folder with the following structure:
```
join_tables/
├── problem.md              # Problem description template
├── solution.sql            # Template for main solution
└── queries/                # Folder containing SQL files
    ├── add_data.sql        # Template for schema and data
    ├── solution1.sql       # Template for first solution approach
    └── solution2.sql       # Template for second solution approach
```

Next steps:
1. Edit the problem.md file to describe the problem
2. Edit the queries/add_data.sql file to set up the schema and data
3. Implement your solutions in solution.sql and queries/*.sql files
