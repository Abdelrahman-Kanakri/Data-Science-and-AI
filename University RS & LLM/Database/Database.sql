DROP DATABASE IF EXISTS INU;
CREATE DATABASE IF NOT EXISTS INU;
USE INU;

SELECT 'CREATING DATABASE STRUCTURE' AS 'INFO';

DROP TABLE IF EXISTS Departments,
                     Cys_dept,
                     SE_dept,
                     Math_dept,
                     Accounting_dept,
                     BusAdmin_dept,
                     DS_AI_dept,
                     Law_dept,
                     Physiotherapy_dept,
                     Nutrition_dept,
                     Arabic_dept,
                     English_dept,
                     UniversityReq_dept,
                     GraphicDesign_dept,
                     Sociology_dept,
                     Nursing_dept,
                     BasicMedSci_dept,
                     PsychCounsel_dept,
                     ClassroomTeacher_dept,
                     VocationalEdu_dept,
                     SpecialEdu_dept,
                     FinBanking_dept,
                     AccInfoSys_dept,
                     ElecMarketing_dept,
                     Entrepreneurship_dept,
                     MIS_dept,
                     Translation_dept;

-- Set default storage engine
/*!50503 SET default_storage_engine = InnoDB */;
/*!50503 SELECT CONCAT('storage engine: ', @@default_storage_engine) AS INFO */;

-- Departments Table 										MAIN TABLE
CREATE TABLE Departments (
    dept_id   INT             NOT NULL AUTO_INCREMENT,
    dept_name VARCHAR(64)     NOT NULL,   -- Increased size for better handling
    PRIMARY KEY (dept_id),
    UNIQUE KEY (dept_name)     -- Ensure each college name is unique
);
-- 															IT College
-- Cyber Security Department Table
CREATE TABLE Cys_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
	prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Computer Science
CREATE TABLE ComputerScience_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
	prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Software Engineering Department Table
CREATE TABLE SE_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
	prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Data Science and Artificial Intelligence
CREATE TABLE DS_AI_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Math Department Table
CREATE TABLE Math_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);
                              
-- Department of Accounting
CREATE TABLE Accounting_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Business Administration
CREATE TABLE BusAdmin_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Law
CREATE TABLE Law_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Physiotherapy
CREATE TABLE Physiotherapy_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Nutrition and Dietetics
CREATE TABLE Nutrition_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Arabic Language and Literature
CREATE TABLE Arabic_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of English Language and Literature
CREATE TABLE English_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- University Requirements
CREATE TABLE UniversityReq_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Graphic Design
CREATE TABLE GraphicDesign_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Sociology
CREATE TABLE Sociology_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Nursing
CREATE TABLE Nursing_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Basic Medical Sciences
CREATE TABLE BasicMedSci_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Psychological and Educational Counseling
CREATE TABLE PsychCounsel_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Classroom Teacher
CREATE TABLE ClassroomTeacher_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Vocational Education
CREATE TABLE VocationalEdu_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Special Education
CREATE TABLE SpecialEdu_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Financial Banking
CREATE TABLE FinBanking_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Accounting Information Systems
CREATE TABLE AccInfoSys_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Electronic Marketing
CREATE TABLE ElecMarketing_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Entrepreneurship
CREATE TABLE Entrepreneurship_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Management Information Systems
CREATE TABLE MIS_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);

-- Department of Translation
CREATE TABLE Translation_dept (
    course_id     INT             NOT NULL AUTO_INCREMENT,
    dept_id       INT             NOT NULL,
    course_name   VARCHAR(64)     NOT NULL,
    course_desc   VARCHAR(1024)    NOT NULL,
    prerequisite_name VARCHAR(64),     -- New column
    prerequisite_number VARCHAR(16),           -- New column
    requirement_type  VARCHAR(64),     -- New column
    number_of_hours   INT,             -- New column
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE,
    INDEX (course_name)
);




-- If the Departments table has a department_code column
INSERT INTO Departments (dept_name, dept_id)
VALUES
    ('Cys_dept', '407'),
    ('SE_dept', '410'),
    ('Math_dept', '404'),
    ('DS_AI_dept', '409'),
    ('ComputerScience_dept', '401');
