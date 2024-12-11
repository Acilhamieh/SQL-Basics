//1-
select name from students 
//2-
select * from students where age > 30 
//3-
select name from students where Gender='F' and age=30
//4-
select points from students where name='Alex'
//5-
insert into students VALUES(7,"Acil",21,"F",400)
//6-
update students set Points=Points+100 where name="Basma"
//7-
update students set Points=Points-50 where name="Alex"
//cretating /table
CREATE TABLE graduates (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Age INTEGER,
    Gender TEXT,
    Points INTEGER,
    Graduation TEXT NOT NULL
);
//
INSERT INTO graduates (Name, Age, Gender, Points, Graduation)
SELECT Name, Age, Gender, Points, 'Graduation Date'
FROM students
WHERE Name = 'Layal';
//
update graduates set Graduation='2018-9-8'
where name='Layal'
//
DELETE FROM students WHERE name='Layal'
//
select employees.Name  , employees.Company  ,companies.Date
from employees,companies
where employees.Company=companies.Name
//
SELECT employees.Name 
from employees,companies
where employees.Company=companies.Name
and companies.Date<2000
//
select Company 
from employees
WHERE role='Graphic Designer'
//
select Name from students 
where Points=(select max(points) FROM students)
//
SELECT avg(points)
FROM students 
//
select count(*)
FROM students 
where points=500
//
select name 
FROM students
WHERE Name like '%s%' 
//
select * 
FROM students 
ORDER by Points DESC

