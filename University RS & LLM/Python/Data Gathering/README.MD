# Documentation: Course Information Management System

## Overview

This Python script provides a structured way to manage course information by organizing data into Pandas DataFrames and converting it into a SQL script for database entry. It includes functionalities for:

1. Entering course information into department-specific DataFrames.
2. Exporting the DataFrame data as SQL insert statements.

## Dependencies

This script requires the following libraries:

- `pandas` for handling tabular data
- `numpy` for numerical operations (though unused in the current version, it can be useful for future enhancements)

```python
import pandas as pd
import numpy as np
```

## DataFrames

Three separate DataFrames are initialized to store course data for different departments:

- **AI Department (`ai`)**
- **Cybersecurity Department (`cys`)**
- **Computer Science Department (`cs`)**

Each DataFrame has the following columns:

- `course_id`: Unique identifier for the course
- `dept_id`: Department ID (first three characters of `course_id`)
- `course_name`: Name of the course
- `course_desc`: Description of the course
- `prerequisite_name`: Name of the prerequisite course (if any)
- `prerequisite_number`: Course number of the prerequisite
- `requirement_type`: Type of requirement (e.g., Core, Elective)
- `number_of_hours`: Credit hours for the course

```python
ai = pd.DataFrame(columns=["course_id", "dept_id",
 "course_name", "course_desc", 
 "prerequisite_name", "prerequisite_number",
  "requirement_type", "number_of_hours"])
  
cys = pd.DataFrame(columns=["course_id", "dept_id",
 "course_name", "course_desc", 
 "prerequisite_name", "prerequisite_number",
  "requirement_type", "number_of_hours"])
  
cs = pd.DataFrame(columns=["course_id", "dept_id",
 "course_name", "course_desc", 
 "prerequisite_name", "prerequisite_number", 
 "requirement_type", "number_of_hours"])
```

## Function: `enter_course_info(df)`

This function allows users to manually input course details and stores them in the provided DataFrame.

### Parameters:

- `df` (*DataFrame*): The DataFrame to store course information.

### Workflow:

1. Prompts the user to enter course details.
2. Automatically extracts the department ID from the first three characters of `course_id`.
3. Appends the information to the specified DataFrame.
4. Users can enter multiple courses, exiting by typing `'exit'`.

```python
def enter_course_info(df):
    while True:
        course_id = input("Enter course ID (or 'exit' to finish): ")
        if course_id.lower() == 'exit':
            break
        
        dept_id = course_id[:3]  # Extract the department ID
        course_name = input("Enter course name: ")
        course_desc = input("Enter course description: ")
        prerequisite_name = input("Enter prerequisite name: ")
        prerequisite_number = input("Enter prerequisite number: ")
        requirement_type = input("Enter requirement type: ")
        number_of_hours = input("Enter number of hours: ")
        
        df.loc[len(ai)] = [course_id, dept_id, course_name,
         course_desc, prerequisite_name,
          prerequisite_number, requirement_type, number_of_hours]
```

## Function: `CSV_to_SQL(df)`

This function converts the DataFrame into SQL `INSERT` statements for easy database entry.

### Parameters:

- `df` (*DataFrame*): The DataFrame containing course data.

### Workflow:

1. Iterates through each row of the DataFrame.
2. Formats the data into an SQL-compatible `INSERT` statement.
3. Handles `NULL` values for `prerequisite_number`.
4. Outputs the SQL statement in a structured format.

```python
def CSV_to_SQL(df):
    for index, row in df.iterrows():
        course_id = row["course_id"]
        dept_id = row["dept_id"]
        course_name = row["course_name"]
        course_desc = row["course_desc"]
        prerequisite_name = row["prerequisite_name"]
        prerequisite_number = row["prerequisite_number"]
        requirement_type = row["requirement_type"]
        number_of_hours = row["number_of_hours"]
        
        if pd.isna(prerequisite_number):
            prerequisite_number = "NULL"
        
        print(f"({course_id}, {dept_id}, \"{course_name}\", \"{course_desc}\", \"{prerequisite_name}\", {prerequisite_number}, \"{requirement_type}\", {number_of_hours}),")
```

## Usage Instructions

### 1. Enter Course Information

Call the `enter_course_info(df)` function and specify which DataFrame to store data in:

```python
enter_course_info(ai)
```

### 2. Convert DataFrame to SQL

Once the DataFrame contains course data, run the `CSV_to_SQL(df)` function to generate SQL statements:

```python
CSV_to_SQL(ai)
```

## Conclusion

This script provides a structured approach to entering, managing, and exporting course information into a SQL-compatible format. It can be expanded further to support automation, validation, and integration with a database system.
