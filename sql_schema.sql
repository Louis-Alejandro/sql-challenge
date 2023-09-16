DROP TABLE departments, dept_emp,
dept_manager, employees, salaries, titles;

CREATE TABLE "departments" (
  "dept_no" varchar,
  "dept_name" varchar,
  Primary Key(dept_no)
);

CREATE TABLE "employees" (
  "emp_no" integer,
  "title_id" varchar,
  "birth_date" date,
  "first_name" varchar,
  "last_name" varchar,
  "sex" varchar,
  "hire_date" date,
  Primary Key(emp_no)
);

CREATE TABLE "dept_manager" (
  "dept_no" varchar,
  "emp_no" integer
);

CREATE TABLE "salaries" (
  "emp_no" integer,
  "salary" integer
);

CREATE TABLE "titles" (
  "title_id" varchar,
  "title" varchar,
  Primary Key(title_id)
);

CREATE TABLE "dept_emp" (
  "emp_no" integer,
  "dept_no" varchar
);

ALTER TABLE "employees" ADD FOREIGN KEY ("title_id") REFERENCES "titles" ("title_id");

ALTER TABLE "dept_emp" ADD FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_emp" ADD FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no");


select * from employees
select * from departments
select * from dept_emp
select * from dept_manager
select * from salaries
select * from titles

