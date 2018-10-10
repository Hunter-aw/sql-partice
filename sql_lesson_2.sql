-- INSERT INTO Jobs
-- VALUES(1, 'teacher', 'Teaching', 1000000);

-- INSERT INTO Departments
-- VALUES (1, 'Coding Bootcamp', 'Full stack bootcamp');

-- INSERT INTO Jobs
-- VALUES (2, 'Manager', 'Managing', 1000000);

-- INSERT INTO Jobs
-- VALUES (3, 'Sales', 'Getting Students', 1000000);

-- INSERT INTO Departments
-- VALUES (2, 'Sales', 'Sales');

-- INSERT INTO Departments
-- VALUES (3, 'Digital Marketing Course', 'Digital Marketing Course');

-- INSERT INTO Employees
-- VALUES (1, 'Hadas', 1, 1);

-- INSERT INTO Employees
-- VALUES (2, 'Adi', 2, 1);

-- INSERT INTO Employees
-- VALUES (3, 'Gilly', 3, 2);

-- INSERT INTO Employees
-- VALUES (5, 'Bob', 3, NULL);

Select * 
from Employees
    Right JOIN Jobs on Jobs.job_id = Employees.employee_id
    Right JOIN Departments on 
        Departments.department_id = Employees.employee_id


-- ALTER TABLE Employees CHANGE name e_name VARCHAR(20);