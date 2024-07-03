# sql-challenge

Pewlett Hackard SQL Challenge

# Background

It's been two weeks since I started my new role as a data engineer at Pewlett Hackard, a fictional company. My first major project involves researching employees who worked at the company during the 1980s and 1990s. To accomplish this, I have been provided with six CSV files containing the employee data from that period.

In this project, I will:

Design database tables to hold the data from these CSV files.
Import the CSV files into a SQL database.
Perform data analysis to answer specific questions about the employees.
This involves tasks related to data modeling, data engineering, and data analysis.

# Repository Structure

EmployeeSQL: Directory containing all project files.

Data Modeling: Entity Relationship Diagram (ERD) and table schemas.

Data Engineering: SQL scripts to create tables and import data.

Data Analysis: SQL scripts for data queries.

Resources: CSV files with employee data.

# Files

1. ERD.png: Entity Relationship Diagram of the tables. 
2. Employee_Schema.sql: SQL script to create the database schema.
3. Scripts.sql: SQL script with data analysis queries.

# Instructions

Data Modeling

Inspect the provided CSV files.
Create an Entity Relationship Diagram (ERD) to design the tables.
Save the ERD as ERD.png.

Data Engineering

Create a SQL script (Employee_Schema.sql) to define the table schemas based on the ERD.
Include data types, primary keys, foreign keys, and other constraints.
Ensure that columns are unique or create composite keys as necessary.
Create tables in the correct order to handle foreign keys.
Import each CSV file into its corresponding table.
Data Analysis
Using the imported data, write SQL queries (Scripts.sql) to answer the following questions:

- List the employee number, last name, first name, sex, and salary of each employee.
- List the first name, last name, and hire date for employees hired in 1986.
- List the manager of each department along with their department number, department name, employee number, last name, and first name.
- List the department number for each employee along with their employee number, last name, first name, and department name.
- List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with B.
- List each employee in the Sales department, including their employee number, last name, and first name.
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
- List the frequency counts, in descending order, of all the employee last names.


