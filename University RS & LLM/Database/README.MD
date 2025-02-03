## **Database Structure for University Information System**

This SQL script creates a database for managing various departments and their respective courses at a university. The structure is designed to accommodate different fields of study, each with its own set of courses, and to support university-specific requirements.

## 1. Database Initialization

```sql
DROP DATABASE IF EXISTS INU;
CREATE DATABASE IF NOT EXISTS INU;
USE INU;
```

**Purpose**: Drops the existing database `INU` (if it exists) and creates a new one named `INU`. It then selects the `INU` database for further operations.

## 2. Table Creation for Departments

```sql
DROP TABLE IF EXISTS Departments, ...;
```

**Purpose**: This line deletes existing tables that have the same names, if they exist, to ensure the creation of fresh tables.

### Departments Table

```sql
CREATE TABLE Departments (
    dept_id INT NOT NULL AUTO_INCREMENT,
    dept_name VARCHAR(64) NOT NULL,
    PRIMARY KEY (dept_id),
    UNIQUE KEY (dept_name)
);
```

**Purpose**

 This is the main table containing general information about each department.

- `dept_id`: A unique identifier for the department.
- `dept_name`: The name of the department.
- **Constraints**: The department name is unique and `dept_id` is the primary key.

## **3. Department-Specific Course Tables**

Each department has its own table for managing courses. The department tables are structured in a similar manner with course-related attributes.

```sql
CREATE TABLE Cys_dept (
    course_id INT NOT NULL AUTO_INCREMENT,
    dept_id INT NOT NULL,
    course_name VARCHAR(64) NOT NULL,
    course_desc VARCHAR(1024) NOT NULL,
    prerequisite_name VARCHAR(64),
    prerequisite_number VARCHAR(16),
    requirement_type VARCHAR(64),
    number_of_hours INT,
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);
```

**Purpose**

This table contains the courses specific to the Cyber Security department.

- `course_id`: A unique identifier for each course.
- `dept_id`: A reference to the department that the course belongs to (foreign key linked to the `Departments` table).
- `course_name`: The name of the course.
- `course_desc`: A description of the course.
- `prerequisite_name`: The name of any prerequisite course.
- `prerequisite_number`: The course code for the prerequisite.
- `requirement_type`: The type of requirement (e.g., mandatory, elective).
- `number_of_hours`: The number of hours allocated for the course.
- **Constraints**:
    - The primary key is `course_id`.
    - The foreign key `dept_id` ensures that each course is linked to a department. If a department is deleted, its associated courses are also deleted (`ON DELETE CASCADE`).
    - An index is created on the `course_name` for faster searches.

## **4. Course Tables for Other Departments**

Other department tables follow the same structure as the `Cys_dept` table but correspond to their respective departments. Examples of departments include:

- Computer Science (`ComputerScience_dept`)
- Software Engineering (`SE_dept`)
- Data Science and AI (`DS_AI_dept`)
- Math (`Math_dept`)
- Accounting (`Accounting_dept`)
- Business Administration (`BusAdmin_dept`)
- Law (`Law_dept`)
- Physiotherapy (`Physiotherapy_dept`)
- Nutrition and Dietetics (`Nutrition_dept`)
- Arabic Language and Literature (`Arabic_dept`)
- English Language and Literature (`English_dept`)
- University Requirements (`UniversityReq_dept`)
- Graphic Design (`GraphicDesign_dept`)
- Sociology (`Sociology_dept`)
- Nursing (`Nursing_dept`)
- Basic Medical Sciences (`BasicMedSci_dept`)
- Psychological and Educational Counseling (`PsychCounsel_dept`)
- Classroom Teacher (`ClassroomTeacher_dept`)
- Vocational Education (`VocationalEdu_dept`)
- Special Education (`SpecialEdu_dept`)
- Finance and Banking (`FinBanking_dept`)
- Accounting and Information Systems (`AccInfoSys_dept`)
- Electronic Marketing (`ElecMarketing_dept`)
- Entrepreneurship (`Entrepreneurship_dept`)
- Management Information Systems (`MIS_dept`)
- Translation (`Translation_dept`)

## **5. Default Storage Engine**

```sql
/*!50503 SET default_storage_engine = InnoDB */;
```

**Purpose**: Specifies the default storage engine to be `InnoDB`. InnoDB is a popular storage engine known for its support for transactions, foreign keys, and crash recovery.

## 6. Indexing for Efficiency

For each course table (e.g., `Cys_dept`, `ComputerScience_dept`, etc.), an index is created on the `course_name` column:

```sql
INDEX (course_name)
```

**Purpose**: Improves query performance when searching for courses by name, ensuring that these searches are more efficient.

## **Conclusion**

This SQL script establishes a well-structured relational database system for managing university departments and courses. Each department is represented by a table, and each department’s courses are stored in separate tables with additional details like prerequisites, hours, and requirements. The use of primary keys, foreign keys, and indexing ensures the integrity of the data and improves performance.

This structure can be easily extended by adding more departments, courses, or any other related information as needed.
