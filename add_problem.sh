#!/bin/bash

# Script to create a new problem folder with template files

# Get problem folder name from argument or prompt
if [ $# -eq 0 ]; then
    echo "Enter the name for the new problem folder:"
    read PROBLEM_NAME
else
    PROBLEM_NAME=$1
fi

# Exit if folder already exists
if [ -d "$PROBLEM_NAME" ]; then
    echo "Error: Folder '$PROBLEM_NAME' already exists!"
    exit 1
fi

# Create folder structure
mkdir -p "$PROBLEM_NAME/queries"

# Create problem.md template
cat > "$PROBLEM_NAME/problem.md" << 'EOF'
# Problem Title

## Problem Statement

Write a query to...

## Schema

### table_name Table

| Column Name | Type    |
|-------------|---------|
| column1     | type1   |
| column2     | type2   |
| ...         | ...     |

## Example Input

### table_name

| column1 | column2 | ... |
|---------|---------|-----|
| value1  | value2  | ... |
| value3  | value4  | ... |
| ...     | ...     | ... |

## Example Output

| result_column1 | result_column2 | ... |
|----------------|----------------|-----|
| result1        | result2        | ... |
| result3        | result4        | ... |
| ...            | ...            | ... |

## Explanation

Explain the expected results and any specific requirements or constraints.

## Notes

Additional information or hints about the problem.
EOF

# Create add_data.sql template
cat > "$PROBLEM_NAME/queries/add_data.sql" << 'EOF'
-- Create tables for the problem

-- Example:
-- CREATE TABLE table_name (
--     column1 TYPE1,
--     column2 TYPE2,
--     ...
--     PRIMARY KEY (column1)
-- );

-- Insert sample data
-- INSERT INTO table_name (column1, column2, ...) VALUES
--     (value1, value2, ...),
--     (value3, value4, ...),
--     ...;

-- Add your schema and data below:

EOF

# Create solution.sql template
cat > "$PROBLEM_NAME/solution.sql" << 'EOF'
-- Solution for the problem

-- Write your solution below:

EOF

# Create solution1.sql template
cat > "$PROBLEM_NAME/queries/solution1.sql" << 'EOF'
-- Solution 1: [Approach description]

-- Write your solution below:

EOF

# Create solution2.sql template
cat > "$PROBLEM_NAME/queries/solution2.sql" << 'EOF'
-- Solution 2: [Alternative approach description]

-- Write your solution below:

EOF

echo "Created $PROBLEM_NAME folder with templates."