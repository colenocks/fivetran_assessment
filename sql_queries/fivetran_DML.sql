SELECT * FROM employee_details;
SELECT * FROM employee_salary;
SELECT * FROM manager_details;

INSERT INTO manager_details VALUES 
(201, 'Leia Organa', 3, 200000),
(202, 'Walter White', 1, 100000),
(203, 'Ned Stark', 1, 100000);

INSERT INTO employee_details VALUES 
(101,'John Snow',203, '2019/1/31','AMER'),  
(102,'Jesse Pinkman', 202, '2020/1/30','EMEA'),
(103, 'Luke Skywalker', 201, '2018/11/27', 'APAC'),
(104, 'Ned Stark', 201, '2016/7/10', 'EMEA'),
(105,'Walter White', 201, '2017/8/24', 'APAC'), 
(106, 'Leia Organa', null, '2015/7/10', 'AMER');

INSERT INTO employee_salary VALUES
(101, 'P1', 8000, 500),
(102, 'P2', 10000, 1000),
(103, 'P3', 12000, 0),
(104, 'P1', 20000, 2000),
(105, 'P2', 15000, 1000),
(106, 'P0', 25000, 3000);

