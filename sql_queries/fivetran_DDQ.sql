 USE fivetran;
 CREATE TABLE employee_details(
     emp_id INT AUTO_INCREMENT,
     full_name VARCHAR(100),
     manager_id INT,
     join_date DATE,
     team CHAR(10),
     PRIMARY KEY(emp_id)
);
ALTER TABLE employee_details AUTO_INCREMENT=100;

CREATE TABLE employee_salary(
     emp_id INT AUTO_INCREMENT,
     project CHAR(3),
     salary DECIMAL,
     bonus DECIMAL,
     PRIMARY KEY(emp_id),
     FOREIGN KEY (emp_id) REFERENCES employee_details(emp_id)
);

CREATE TABLE manager_details(
     manager_id INT AUTO_INCREMENT,
     full_name VARCHAR(100),
     direct_reports INT,
     annual_budget DECIMAL,
     PRIMARY KEY(manager_id)
);
ALTER TABLE manager_details AUTO_INCREMENT=200;

ALTER TABLE employee_details
ADD FOREIGN KEY (manager_id) REFERENCES manager_details(manager_id);