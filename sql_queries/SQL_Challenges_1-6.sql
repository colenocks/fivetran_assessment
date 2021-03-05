/* 
 1. A list of all the employees who report to Walter White.
*/

SELECT ed.emp_id, ed.full_name, ed.join_date, ed.team FROM employee_details ed
INNER JOIN manager_details md
ON md.manager_id = ed.manager_id
WHERE md.full_name = 'Walter White'; 

/* 
 2. add Thomas Anderson with the Employee ID of 131 to the EmployeeDetails table. 
 He joined the Oakland team on April 1, 2020, and his manager’s name is Ned Stark
*/

INSERT INTO employee_details VALUES
(131, 'Thomas Anderson', 203, '2020-04-01', 'AMER'); 

/*
3. Write a single query to display all employee names and manager names
*/
SELECT full_name FROM employee_details
UNION
SELECT full_name FROM manager_details
ORDER BY full_name;

/*
4. Write a SQL query to calculate the average salary for all employees 
where the manager is Leia Organa.
*/
 
SELECT e.manager_id as 'LEIA ORGANA', avg(salary) as 'AVERAGE SALARY' FROM employee_salary es
INNER JOIN (SELECT * FROM employee_details WHERE manager_id = 201) as e
ON es.emp_id = e.emp_id;

/*
5. What is the median total compensation per region where 
bonuses are always part of the compensation package
*/

SELECT sum(bonus) as COMPENSATION, team as REGION FROM employee_salary es
INNER JOIN employee_details ed
ON es.emp_id = ed.emp_id
WHERE bonus <> -1
GROUP BY team
ORDER BY bonus;

/*
6. Write a SQL query to show the percentage of Leia Organa’s 
annual budget that is used for employee compensation
*/
SELECT round(sum(es.bonus) * 100/ md.annual_budget, 2) as 'Emp Compensation (%)' 
FROM employee_salary es
INNER JOIN (SELECT * FROM employee_details WHERE manager_id = 201) as ed
ON ed.emp_id = es.emp_id
INNER JOIN manager_details md
ON md.manager_id = ed.manager_id;