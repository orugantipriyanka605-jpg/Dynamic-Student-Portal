# DYNAMIC STUDENT PORTAL

A web-based Student Management System developed using JSP, JDBC, MySQL, and Apache Tomcat.

## PROJECT DESCRIPTION

The Dynamic Student Portal allows users to manage student information through a simple web interface. It performs CRUD operations using JSP and JDBC with a MySQL database.

## FEATURES

- Add Student
- Search Student by ID
- Update Student Details
- Delete Student
- Manage Grade and Attendance
- MySQL Database Connectivity
- JSP Session Management

## TECHNOLOGIES USED

- Frontend: HTML, CSS
- Backend: JSP, JDBC
- Programming Language: Java
- Database: MySQL
- Server: Apache Tomcat 10.1
- IDE: Eclipse
- Database Tool: MySQL Workbench

## Database Details

Database Name: "student_db"

Table Name: "students"

The student table contains:

- Student ID
- Name
- Email
- Course
- Grade
- Attendance

## CRUD Operations

Operation| Function
Create| Add new student
Read| Search student details
Update| Modify student details
Delete| Remove student

## Project Structure

StudentPortal
│
├── index.jsp
├── add.jsp
├── process.jsp
├── search.jsp
├── update.jsp
├── delete.jsp
├── welcome.jsp
│
└── WEB-INF
    └── lib
        └── MySQL Connector/J

## How to Run

1. Install JDK 21.
2. Configure Apache Tomcat 10.1 in Eclipse.
3. Create the "student_db" database in MySQL.
4. Add MySQL Connector/J to "WEB-INF/lib".
5. Configure the MySQL connection details in the JSP files.
6. Run the project using Apache Tomcat.
7. Open the Student Portal in a browser.

Author

LAKSHMI PRIYANKA ORUGANTI

MCA STUDENT
